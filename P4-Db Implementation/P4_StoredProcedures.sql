USE RideSharingApp
GO

---- STORED PROCEDURE 1 : CREATING A NEW USER (DRIVER OR PASSENGER) ----

CREATE PROCEDURE CreateUser
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Gender VARCHAR(25),
    @DOB DATE,
    @Email VARCHAR(100),
    @PhoneNumber VARCHAR(25),
    @Role VARCHAR(10), -- 'Driver' or 'Passenger'
    -- Optional Car details, used only for drivers
    @LicenseNumber VARCHAR(50) = NULL,
    @CarModel VARCHAR(25) = NULL,
    @CarType VARCHAR(25) = NULL,
    @RegistrationNumber VARCHAR(25) = NULL,
    @LicensePlate VARCHAR(25) = NULL,
    @Capacity INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert into the USER table
    INSERT INTO [USER] (FirstName, LastName, Gender, DOB, Email, PhoneNumber)
    VALUES (@FirstName, @LastName, @Gender, @DOB, @Email, @PhoneNumber);

    DECLARE @NewUserID INT = SCOPE_IDENTITY();

    IF @Role = 'Driver'
    BEGIN
        -- Validate car details since they're required for drivers
        IF @CarModel IS NULL OR @CarType IS NULL OR @RegistrationNumber IS NULL OR @LicensePlate IS NULL OR @Capacity IS NULL
        BEGIN
            PRINT 'Missing car details. All car details must be provided for a driver.';
            RETURN;
        END

        -- Insert into CAR table
        INSERT INTO CAR (CarModel, CarType, RegistrationNumber, LicensePlate, Capacity, [Status])
        VALUES (@CarModel, @CarType, @RegistrationNumber, @LicensePlate, @Capacity, 'Available');

        DECLARE @NewCarID INT = SCOPE_IDENTITY();

        -- Insert into DRIVER table
        INSERT INTO DRIVER (UserID, CarID, LicenseNumber, Rating)
        VALUES (@NewUserID, @NewCarID, @LicenseNumber, DEFAULT);

        PRINT 'Driver added with UserID ' + CAST(@NewUserID AS VARCHAR) + ' and CarID ' + CAST(@NewCarID AS VARCHAR) + '.';
    END
    ELSE IF @Role = 'Passenger'
    BEGIN
        -- Insert into PASSENGER table; assuming only UserID is needed to link the passenger
        INSERT INTO PASSENGER (UserID, PassengerRating)
        VALUES (@NewUserID, DEFAULT); -- Assuming default rating is set

        PRINT 'Passenger added with UserID ' + CAST(@NewUserID AS VARCHAR) + '.';
    END
    ELSE
    BEGIN
        PRINT 'Role must be either ''Driver'' or ''Passenger''.';
    END
END;
GO



---- STORED PROCEDURE 2 : DISPLAY ONGOING TRIPS ----

CREATE PROCEDURE DisplayOngoingTrips
    @PassengerID INT,
    @TripType NVARCHAR(50),
    @CarType NVARCHAR(50),
    @StartStreet NVARCHAR(255),
    @StartCity NVARCHAR(255),
    @DropStreet NVARCHAR(255),
    @DropCity NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @StartLocationID INT;
    DECLARE @DropLocationID INT;

    -- Finding Start and Drop Location IDs
    SELECT @StartLocationID = LocationID FROM LOCATIONS
    WHERE Street = @StartStreet AND City = @StartCity;

    SELECT @DropLocationID = LocationID FROM LOCATIONS
    WHERE Street = @DropStreet AND City = @DropCity;

    -- Displaying Ongoing Trips
    SELECT t.TripID, t.DriverID, t.TripType, t.Date, t.TripStatus
    FROM TRIP t
    INNER JOIN PASSENGERTRIPS pt ON t.TripID = pt.TripID
    WHERE t.TripStatus = 'Ongoing'
    AND t.TripType = @TripType
    AND pt.StartLocationID = @StartLocationID
    AND pt.DropLocationID = @DropLocationID;
END
GO



---- STORED PROCEDURE 3 : JOIN EXISTING TRIPS ----

CREATE PROCEDURE JoinExistingTrip
    @PassengerID INT,
    @ExistingTripID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Variables to hold location IDs and car details
    DECLARE @TripID INT, @PassengerTripID INT, @StartLocationID INT, @DropLocationID INT, @CarID INT, @UpdatedCarCapacity INT;

    -- Retrieve Start and Drop Location IDs from the existing trip
    SELECT TOP 1 @StartLocationID = StartLocationID, @DropLocationID = DropLocationID
    FROM PASSENGERTRIPS WHERE TripID = @ExistingTripID;

    -- Retrieve CarID from the existing trip
    SELECT @CarID = d.CarID FROM DRIVER d INNER JOIN TRIP t ON d.DriverID = t.DriverID WHERE t.TripID = @ExistingTripID;

    -- Add the passenger to the existing trip
    INSERT INTO PASSENGERTRIPS (PassengerID, TripID, BillingID, StartLocationID, DropLocationID)
    VALUES (@PassengerID, @ExistingTripID, NULL, @StartLocationID, @DropLocationID);
    
    -- After inserting into PASSENGERTRIPS
    SET @PassengerTripID = SCOPE_IDENTITY();
    SELECT 'Passenger added to existing Trip ID: ' + CAST(@TripID AS NVARCHAR(50)) + 
        ', PassengerTripID: ' + CAST(@PassengerTripID AS NVARCHAR(50)) + 
        ', PassengerID: ' + CAST(@PassengerID AS NVARCHAR(50));
    
    -- Assume BillingID is auto-generated and linked with PassengerTripID via a trigger
    -- Now, call the procedure to update billing details for this PassengerTripID
    EXEC BillingDetails @PassengerTripID;


    -- Update Car capacity
    UPDATE CAR SET Capacity = Capacity - 1 WHERE CarID = @CarID;

    -- Check if Car capacity has reached 0, update status if necessary
    SELECT @UpdatedCarCapacity = Capacity FROM CAR WHERE CarID = @CarID;

    IF @UpdatedCarCapacity = 0
    BEGIN
        UPDATE CAR SET [Status] = 'Unavailable' WHERE CarID = @CarID;
    END
END
GO



---- STORED PROCEDURE 4 : CREATE A NEW TRIP ----

CREATE PROCEDURE CreateNewTrip
    @PassengerID INT,
    @TripType NVARCHAR(50),
    @CarType NVARCHAR(50),
    @StartStreet NVARCHAR(255),
    @StartCity NVARCHAR(255),
    @DropStreet NVARCHAR(255),
    @DropCity NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @StartLocationID INT, @DropLocationID INT, @TripID INT, @PassengerTripID INT, @CarID INT, @DriverID INT;

    -- Create a table variable to store output results
    DECLARE @OutputTable TABLE (
        Message NVARCHAR(255),
        TripID INT,
        PassengerTripID INT,
        PassengerID INT
    );

    -- Find Start and Drop Location IDs
    SELECT @StartLocationID = LocationID FROM LOCATIONS WHERE Street = @StartStreet AND City = @StartCity;
    SELECT @DropLocationID = LocationID FROM LOCATIONS WHERE Street = @DropStreet AND City = @DropCity;

    -- Find a Car that matches the CarType and has available capacity
    SELECT TOP 1 @CarID = CarID FROM CAR WHERE CarType = @CarType AND Capacity > 0 AND [Status] = 'Available' ORDER BY NEWID();

    -- Find an available driver for the car type
    SELECT TOP 1 @DriverID = DriverID FROM DRIVER d INNER JOIN CAR c ON d.CarID = c.CarID WHERE c.CarType = @CarType ORDER BY NEWID();

    IF @CarID IS NOT NULL --AND @DriverID IS NOT NULL
    BEGIN
        -- Insert a new Trip record
        INSERT INTO TRIP (DriverID, TripType, Date, TripStatus) 
        VALUES (@DriverID, @TripType, GETDATE(), 'Ongoing');
        SET @TripID = SCOPE_IDENTITY();

        -- Insert a new PassengerTrips record
        INSERT INTO PASSENGERTRIPS (PassengerID, TripID, BillingID, StartLocationID, DropLocationID) 
        VALUES (@PassengerID, @TripID, NULL, @StartLocationID, @DropLocationID);
        SET @PassengerTripID = SCOPE_IDENTITY();

        -- Insert result into @OutputTable
        INSERT INTO @OutputTable (Message, TripID, PassengerTripID, PassengerID)
        VALUES ('Passenger added to new Trip', @TripID, @PassengerTripID, @PassengerID);

        -- Assume BillingID is auto-generated and linked with PassengerTripID via a trigger
        -- Now, call the procedure to update billing details for this PassengerTripID
        EXEC BillingDetails @PassengerTripID;

        -- Update Car capacity
        UPDATE CAR SET Capacity = Capacity - 1 
        WHERE CarID = @CarID;

        -- You might want to check and update the car's status if capacity reaches 0 in a similar manner
    END
    ELSE
    BEGIN
        -- Handle the case where no car or driver is available
        INSERT INTO @OutputTable (Message, TripID, PassengerTripID, PassengerID)
        VALUES ('No available cars or drivers with the specified type and capacity greater than 0.', NULL, NULL, @PassengerID);
    END

    -- Return the result set
    SELECT * FROM @OutputTable;
END
GO

---- STORED PROCEDURE 5 : PASSENGER BILLING ----

CREATE PROCEDURE BillingDetails
    @PassengerTripID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Temporarily hold calculated billing details
    DECLARE @BillAmount DECIMAL(10, 2);
    DECLARE @DiscountAmount DECIMAL(10, 2);
    DECLARE @ChargedAmount DECIMAL(10, 2);
    DECLARE @PaymentMethod NVARCHAR(50);
    DECLARE @CreditCardNumber NVARCHAR(16);

    -- Retrieve billing details based on the PassengerTripID
    ;WITH CalculatedBilling AS (
        SELECT 
            pt.BillingID,
            rc.Rate AS BillAmount,
            rc.DiscountPercentage * rc.Rate / 100.0 AS DiscountAmount,
            rc.Rate - (rc.DiscountPercentage * rc.Rate / 100.0) AS ChargedAmount,
            CASE ABS(CHECKSUM(NewId())) % 3
                WHEN 0 THEN 'Credit Card'
                WHEN 1 THEN 'Debit Card'
                ELSE 'Cash'
            END AS PaymentMethod
        FROM 
            PASSENGERTRIPS pt
            INNER JOIN LOCATIONS locStart ON pt.StartLocationID = locStart.LocationID
            INNER JOIN LOCATIONS locEnd ON pt.DropLocationID = locEnd.LocationID
            INNER JOIN RATECARD rc ON locStart.City = rc.FromCity AND locEnd.City = rc.ToCity
        WHERE 
            pt.PassengerTripID = @PassengerTripID
    )
    SELECT 
        @BillAmount = BillAmount,
        @DiscountAmount = DiscountAmount,
        @ChargedAmount = ChargedAmount,
        @PaymentMethod = PaymentMethod
    FROM CalculatedBilling;

    -- Generate Credit Card Number for applicable payment methods
    SET @CreditCardNumber = CASE 
                                WHEN @PaymentMethod IN ('Credit Card', 'Debit Card')
                                THEN REPLACE(STR(ABS(CHECKSUM(NewId())) % 10000000000000000, 16), ' ', '0')
                                ELSE NULL
                            END;

    -- Update the BILLING table for the retrieved BillingID
    UPDATE BILLING
    SET 
        BillAmount = @BillAmount,
        DiscountAmount = @DiscountAmount,
        ChargedAmount = @ChargedAmount,
        PaymentMethod = @PaymentMethod,
        CreditCardNumber = @CreditCardNumber
    WHERE BillingID = (SELECT BillingID FROM PASSENGERTRIPS WHERE PassengerTripID = @PassengerTripID);

    -- Update the DRIVERBILLING table for the corresponding TripID
    UPDATE DRIVERBILLING
    SET 
        BillAmount = @ChargedAmount
    FROM DRIVERBILLING db
    INNER JOIN TRIP t ON db.TripID = t.TripID
    INNER JOIN PASSENGERTRIPS pt ON t.TripID = pt.TripID
    WHERE pt.PassengerTripID = @PassengerTripID;   

END;
GO

---- STORED PROCEDURE 6 : DISPLAY BILLING DETAILS ----

CREATE PROCEDURE DisplayBillingDetails
    @PassengerID INT,
    @PassengerTripID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Retrieve billing details for the most recent or specific trip for the given PassengerID
    SELECT
        p.PassengerID,
        pt.PassengerTripID,
        t.TripID,
        b.BillingID,
        b.BillAmount,
        b.DiscountAmount,
        b.ChargedAmount,
        b.PaymentMethod,
        b.CreditCardNumber
    FROM
        PASSENGERTRIPS pt
        INNER JOIN PASSENGER p ON pt.PassengerID = p.PassengerID
        INNER JOIN TRIP t ON pt.TripID = t.TripID
        INNER JOIN BILLING b ON pt.BillingID = b.BillingID
    WHERE
        pt.PassengerID = @PassengerID AND
        pt.PassengerTripID = @PassengerTripID
    -- -- Assuming we're interested in the most recent trip; adjust as necessary
    -- ORDER BY t.Date DESC
    -- FETCH FIRST 1 ROWS ONLY;
END;
GO