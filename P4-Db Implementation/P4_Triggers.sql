USE RideSharingApp
GO

---- TRIGGER 1 : GENERATING SERVICE REQUEST UPON COMPLAINT RAISED ----

CREATE TRIGGER trg_AfterInsertComplaint
ON COMPLAINT
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;   
    -- Insert a new ServiceRequest with a randomly selected Customer Representative
    INSERT INTO ServiceRequest (ComplaintID, CustomerRepresentative, [Status])
    SELECT 
        ComplaintID, 
        (SELECT TOP 1 CustomerRepresentative 
         FROM SERVICEREQUEST 
         ORDER BY NEWID()), -- Orders the table randomly and selects the top name
        'Pending'
    FROM inserted;
END;
GO

---- TRIGGER 2 : CLOSING COMPLAINT UPON SERVICE REQUEST RESOLVED ----

CREATE TRIGGER trg_AfterComplaintResolved
ON COMPLAINT
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    -- Update the ServiceRequest status to 'Resolved' for the resolved Complaints
    UPDATE ServiceRequest
    SET [Status] = 'Resolved'
    FROM inserted
    INNER JOIN deleted ON inserted.ComplaintID = deleted.ComplaintID
    WHERE inserted.IsResolved = 1
    AND deleted.IsResolved != 1
    AND ServiceRequest.ComplaintID = inserted.ComplaintID;
END;
GO


---- TRIGGER 3 : CREATE BILLING ID WHEN A PASSENGER BOOKS A TRIP ----

CREATE TRIGGER trgAfterPassengerTripCreation
ON PASSENGERTRIPS
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PassengerTripID INT;
    DECLARE @PassengerID INT;
    DECLARE @NewBillingID INT;

    -- Select the PassengerTripID and PassengerID from the inserted record
    SELECT @PassengerTripID = i.PassengerTripID, @PassengerID = i.PassengerID
    FROM inserted i;

    -- Insert a record into the BILLING table. Assume all other fields are either NULL or have a default value.
    INSERT INTO BILLING (BillAmount, DiscountAmount, ChargedAmount, PaymentMethod, CreditCardNumber) 
    VALUES (NULL, NULL, NULL, NULL, NULL); -- Using DEFAULT or a specific value as required by your table design

    -- Get the ID of the newly created billing record
    SET @NewBillingID = SCOPE_IDENTITY();

    -- Update the PASSENGERTRIPS record with the new BillingID
    UPDATE PASSENGERTRIPS
    SET BillingID = @NewBillingID
    WHERE PassengerTripID = @PassengerTripID AND PassengerID = @PassengerID;
END;
GO