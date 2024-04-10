USE RideSharingApp
GO

---- VIEW 1: REVENUE BY CAR TYPE ----
--Aggregates revenue generated, segmented by car type.
CREATE VIEW RevenueByCarType AS
SELECT 
    c.CarType,
    SUM(b.ChargedAmount) AS TotalRevenue
FROM Car c
JOIN DRIVER d ON c.CarID = d.CarID
JOIN Trip t ON d.DriverID = t.DriverID
JOIN PassengerTrips pt ON t.TripID = pt.TripID
JOIN Billing b ON pt.BillingID = b.BillingID
GROUP BY c.CarType;
GO

SELECT * FROM RevenueByCarType;
GO


---- VIEW 2: DAILY REVENUE REPORT ----
--This view breaks down revenue, discounts, and net earnings on a daily basis. 
--It's an essential tool for financial tracking, allowing for the analysis of revenue trends over time and the effectiveness of discount campaigns.

CREATE VIEW DailyRevenueReport AS
SELECT 
    CAST(t.[Date] AS DATE) AS TripDate,
    SUM(b.BillAmount) AS TotalBillAmount,
    SUM(b.DiscountAmount) AS TotalDiscountGiven,
    SUM(b.ChargedAmount) AS TotalChargedAmount,
    SUM(db.CommissionAmount) AS TotalCommissionPaid,
    SUM(b.ChargedAmount) - SUM(db.CommissionAmount) AS NetRevenue
FROM Trip t
JOIN PassengerTrips pt ON t.TripID = pt.TripID
JOIN Billing b ON pt.BillingID = b.BillingID
JOIN DRIVERBILLING db ON t.TripID = db.TripID
GROUP BY CAST(t.[Date] AS DATE);
GO

SELECT * FROM DailyRevenueReport;
GO


---- VIEW 3: SERVICE REQUEST OVERVIEW ----
--This view provides an overview of service requests, including complaint details, whether the issue is resolved, 
--and the customer service representative assigned to the case. It's useful for tracking service quality and resolution efficiency.

CREATE VIEW ServiceRequestOverview AS
SELECT 
    sr.ServiceRequestID,
    sr.ComplaintID,
    c.PassengerTripID,
    sr.CustomerRepresentative,
    sr.[Status],
    c.ComplaintDescription,
    c.IsResolved
FROM SERVICEREQUEST sr
JOIN COMPLAINT c ON sr.ComplaintID = c.ComplaintID;
GO

SELECT * FROM ServiceRequestOverview;
GO


---- VIEW 4: MONTHLY DRIVER EARNINGS ----
 --Provides a summary of earnings per driver on a monthly basis.

CREATE VIEW MonthlyDriverEarnings AS
SELECT 
    d.DriverID,
    u.FirstName + ' ' + u.LastName AS DriverName,
    MONTH(t.[Date]) AS Month,
    YEAR(t.[Date]) AS Year,
    SUM(db.CommissionAmount) AS TotalEarnings
FROM DRIVER d
JOIN [USER] u ON d.UserID = u.UserID
JOIN Trip t ON d.DriverID = t.DriverID
JOIN DRIVERBILLING db ON t.TripID = db.TripID
GROUP BY d.DriverID, u.FirstName, u.LastName, MONTH(t.[Date]), YEAR(t.[Date]);
GO

SELECT * FROM MonthlyDriverEarnings;
GO


---- VIEW 5: DRIVER PERFORMANC SUMMARY ----
--This view aggregates key performance indicators for drivers, such as average rating, total number of trips, and average commission earned per trip. 
--It's useful for evaluating driver performance and identifying top or underperforming drivers.

CREATE VIEW DriverPerformanceSummary AS
SELECT 
    d.DriverID,
    u.FirstName + ' ' + u.LastName AS DriverName,
    AVG(d.Rating) AS AverageRating,
    COUNT(t.TripID) AS TotalTrips,
    AVG(db.CommissionAmount) AS AverageCommissionEarned
FROM DRIVER d
JOIN [USER] u ON d.UserID = u.UserID
JOIN Trip t ON d.DriverID = t.DriverID
JOIN DRIVERBILLING db ON t.TripID = db.TripID
GROUP BY d.DriverID, u.FirstName, u.LastName;
GO

SELECT * FROM DriverPerformanceSummary;
GO