CREATE DATABASE RideSharingApp
GO

USE RideSharingApp

CREATE TABLE LOCATIONS (
	LocationID INT IDENTITY(1,1) PRIMARY KEY,
	Street VARCHAR (50),
	City VARCHAR (25),
	[State] VARCHAR (25),
	Zipcode INT
);

CREATE TABLE RATECARD (
    FromCity VARCHAR(50),
    ToCity VARCHAR(50),
    Rate INT,
    DiscountPercentage INT,
    CommissionPercentage INT
);

CREATE TABLE CAR (
    CarID INT IDENTITY(100,1) PRIMARY KEY,
    CarModel VARCHAR(25),
    CarType VARCHAR (25),
    RegistrationNumber VARCHAR(25),
	LicensePlate VARCHAR(25),
    Capacity INT,
	[Status] VARCHAR(25)
);

CREATE TABLE [USER] (
    UserID INT IDENTITY(200,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(25),
    DOB DATE,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(25) 
);

CREATE TABLE DRIVER (
    DriverID INT IDENTITY(300,1) PRIMARY KEY,
    UserID INT,
    CarID INT,
    LicenseNumber VARCHAR(50),
    Rating DECIMAL(3,2),
    CONSTRAINT FK_CarID FOREIGN KEY (CARID) REFERENCES Car(CarID),
    CONSTRAINT FK_DriverUserID FOREIGN KEY (UserID) REFERENCES [USER](UserID)
);


CREATE TABLE PASSENGER (
   PassengerID INT IDENTITY(400,1) PRIMARY KEY,
   UserID INT,
   PassengerRating DECIMAL(3,2),
   CONSTRAINT FK_PassengerUserID FOREIGN KEY (UserID) REFERENCES [USER](UserID)
);

CREATE TABLE TRIP (
    TripID INT IDENTITY(500,1) PRIMARY KEY,
    DriverID INT,
    TripType VARCHAR(50),
    [Date] DATETIME,
	TripStatus VARCHAR(50),
	CONSTRAINT FK_DriverID  FOREIGN KEY (DriverID) REFERENCES Driver(DriverID)
    
);

CREATE TABLE DRIVERBILLING (
    DriverBillID INT IDENTITY(600,1) PRIMARY KEY,
    TripID INT,
    BillAmount DECIMAL (10,2),
    CONSTRAINT FK_TripID  FOREIGN KEY (TripID) REFERENCES Trip(TripID)
);

CREATE TABLE BILLING (
    BillingID INT IDENTITY(700,1) PRIMARY KEY,
    BillAmount  DECIMAL (10,2),
    DiscountAmount DECIMAL (10,2),	
    ChargedAmount DECIMAL (10,2),
    PaymentMethod VARCHAR(50),
    CreditCardNumber VARCHAR(50),
);

CREATE TABLE PASSENGERTRIPS (
    PassengerTripID INT IDENTITY(800,1) PRIMARY KEY,
    PassengerID INT,
    TripID INT,
    BillingID INT,
    StartLocationID INT,
    DropLocationID INT,
	CONSTRAINT FK_PassengerID FOREIGN KEY (PassengerID) REFERENCES PASSENGER(PassengerID),
	CONSTRAINT FK_TripID1 FOREIGN KEY (TripID) REFERENCES Trip(TripID),
    CONSTRAINT FK_BillingID FOREIGN KEY (BillingID) REFERENCES Billing(BillingID),
	CONSTRAINT FK_StartLocationID FOREIGN KEY (StartLocationID) REFERENCES Locations(LocationID),
	CONSTRAINT FK_DropLocationID FOREIGN KEY (DropLocationID) REFERENCES Locations(LocationID)
);

CREATE TABLE COMPLAINT (
    ComplaintID INT IDENTITY(900,1) PRIMARY KEY,
    PassengerTripID INT,
    ComplaintDescription VARCHAR(255),
    IsResolved BIT DEFAULT 0,
	CONSTRAINT FK_PassengerTripID FOREIGN KEY (PassengerTripID) REFERENCES PassengerTrips (PassengerTripID)
);

CREATE TABLE SERVICEREQUEST (
    ServiceRequestID INT IDENTITY(1000,1) PRIMARY KEY,
    ComplaintID INT,
    CustomerRepresentative VARCHAR(255),
    [Status] VARCHAR(50),
	CONSTRAINT FK_ComplaintID FOREIGN KEY (ComplaintID) REFERENCES Complaint (ComplaintID)
);



---- CHECK CONSTRAINTS ----

ALTER TABLE Trip
ADD CONSTRAINT CHK_Trip_TripStatus 
CHECK (TripStatus IN ('Ongoing', 'Completed', 'Cancelled'));

ALTER TABLE Car 
ADD CONSTRAINT CHK_Car_Status
CHECK ([Status] IN ('Available', 'Unavailable'));

ALTER TABLE CAR 
ADD CONSTRAINT CHK_Car_Type
CHECK (CarType IN ('Sedan', 'Hatchback', 'SUV', 'MidSize SUV'));

ALTER TABLE Billing
ADD CONSTRAINT CHK_Billing_PaymentMethod
CHECK (PaymentMethod IN ('Credit Card', 'Debit Card', 'Cash'));

ALTER TABLE ServiceRequest
ADD CONSTRAINT CHK_ServiceRequest_Status
CHECK ([Status] IN ('Pending', 'Resolved'));



---- NON CLUSTERED INDEXES ----

CREATE NONCLUSTERED INDEX IDX_Driver_LicenseNumber ON DRIVER (LicenseNumber);
CREATE NONCLUSTERED INDEX IDX_Trip_DriverId_Date ON Trip (DriverId, Date);
CREATE NONCLUSTERED INDEX IDX_PassengerTrips_PassengerID ON PassengerTrips (PassengerID);



---- DATA ENCRYPTION FOR CREDIT CARD NUMBER AND REGISTRATION NUMBER ----

-- Setting up Encryption Infrastructure
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'data@123!';
GO
CREATE CERTIFICATE RideSharingAppCert WITH SUBJECT = 'Encryption Certificate for RideSharingApp';
GO
CREATE SYMMETRIC KEY RideSharingAppSymmetricKey WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE RideSharingAppCert;
GO

-- Modify Tables for Encryption
-- CAR Table for Registration Number
ALTER TABLE CAR ADD RegistrationNumberEncrypted VARBINARY(MAX);
GO-- BILLING Table for CreditCardNumber
ALTER TABLE BILLING ADD CreditCardNumberEncrypted VARBINARY(MAX);
GO

-- Encrypt Column Data
OPEN SYMMETRIC KEY RideSharingAppSymmetricKey DECRYPTION BY CERTIFICATE RideSharingAppCert;
-- Encrypt CAR.RegistrationNumber
UPDATE CAR
SET RegistrationNumberEncrypted = EncryptByKey(Key_GUID('RideSharingAppSymmetricKey'), RegistrationNumber, 1, HashBytes('SHA2_256', CONVERT(varbinary, CarID)));
GO
-- Encrypt BILLING.CreditCardNumber
UPDATE BILLING
SET CreditCardNumberEncrypted = EncryptByKey(Key_GUID('RideSharingAppSymmetricKey'), CreditCardNumber, 1, HashBytes('SHA2_256', CONVERT(varbinary, BillingID)));
GO
CLOSE SYMMETRIC KEY RideSharingAppSymmetricKey;
GO