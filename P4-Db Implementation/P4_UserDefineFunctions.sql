---- Computed Column User Define Function : 1 -----------

CREATE FUNCTION CalculateCommissionAmount (@TripID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @CommissionPercentage DECIMAL(10,2);
    DECLARE @ChargedAmount DECIMAL(10,2);
    DECLARE @CommissionAmount DECIMAL(10,2);

    -- Get the commission percentage based on the start and end locations
    SELECT @CommissionPercentage = rc.CommissionPercentage
    FROM RATECARD rc
    INNER JOIN LOCATIONS locStart ON rc.FromCity = locStart.City
    INNER JOIN LOCATIONS locEnd ON rc.ToCity = locEnd.City
    INNER JOIN PASSENGERTRIPS pt ON locStart.LocationID = pt.StartLocationID AND locEnd.LocationID = pt.DropLocationID
    WHERE pt.TripID = @TripID;

    -- Get the charged amount for the trip from the billing table
    SELECT @ChargedAmount = ChargedAmount
    FROM BILLING
    WHERE BillingID = (SELECT BillingID FROM PASSENGERTRIPS WHERE TripID = @TripID);

    -- Calculate the commission amount
    SET @CommissionAmount = (@CommissionPercentage / 100) * @ChargedAmount;

    -- Return the commission amount
    RETURN @CommissionAmount;
END;
GO

ALTER TABLE DriverBilling
ADD CommissionAmount AS dbo.CalculateCommissionAmount(TripID);

---- Computed Column User Define Function : 2 -------

GO
CREATE FUNCTION CalculateDriverBilling (@TripID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @ChargedAmount DECIMAL(10,2);

    -- Get the charged amount for the trip from the billing table
    SELECT @ChargedAmount = ChargedAmount
    FROM BILLING
    WHERE BillingID = (SELECT BillingID FROM PASSENGERTRIPS WHERE TripID = @TripID);

    -- Calculate the commission amount
    DECLARE @CommissionAmount DECIMAL(10,2);
    SET @CommissionAmount = dbo.CalculateCommissionAmount(@TripID);

    -- Return the total driver billing amount
    RETURN @ChargedAmount - @CommissionAmount;
END;
GO

ALTER TABLE DriverBilling
ADD TotalDriverPay AS dbo.CalculateDriverBilling(TripID);

SELECT * FROM DriverBilling


----- User Defined Function 1 ------
GO
CREATE FUNCTION CalculateTotalTripsByDriver (@DriverID INT)
RETURNS INT
AS
BEGIN
    DECLARE @TotalTrips INT;
    SELECT @TotalTrips = COUNT(*)
    FROM TRIP
    WHERE DriverID = @DriverID;
    RETURN @TotalTrips;
END;
GO
SELECT dbo.CalculateTotalTripsByDriver(301) AS TotalDriverTrips
