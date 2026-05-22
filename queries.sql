--------------------------------------------------
-- Query 1
-- Retrieve all houses for a specific owner
--------------------------------------------------

SELECT *
FROM Houses
WHERE OwnerId = 1;



--------------------------------------------------
-- Query 2
-- Retrieve all heaters in a specific house
--------------------------------------------------

SELECT *
FROM Heaters
WHERE HouseId = 1;



--------------------------------------------------
-- Query 3
-- Get daily usage where working hours > 8
--------------------------------------------------

SELECT *
FROM DailyUsage
WHERE WorkingHours > 8;



--------------------------------------------------
-- Query 4
-- Get reports for a specific month
--------------------------------------------------

SELECT *
FROM MonthlyReport
WHERE ReportMonth = '2026-05';



--------------------------------------------------
-- Query 5
-- Order houses by total monthly cost descending
--------------------------------------------------

SELECT HouseId, MonthlyAverageCost
FROM MonthlyReport
ORDER BY MonthlyAverageCost DESC;



--------------------------------------------------
-- Query 6
-- Order heaters by power value
--------------------------------------------------

SELECT *
FROM Heaters
ORDER BY PowerValue DESC;



--------------------------------------------------
-- Query 7
-- Total working hours per house per month
--------------------------------------------------

SELECT
    h.HouseId,
    SUM(d.WorkingHours) AS TotalHours
FROM Houses h
JOIN Heaters he
    ON h.HouseId = he.HouseId
JOIN DailyUsage d
    ON he.HeaterId = d.HeaterId
GROUP BY h.HouseId;



--------------------------------------------------
-- Query 8
-- Average daily working hours per heater
--------------------------------------------------

SELECT
    HeaterId,
    AVG(WorkingHours) AS AverageHours
FROM DailyUsage
GROUP BY HeaterId;



--------------------------------------------------
-- Query 9
-- Maximum heater value used per house
--------------------------------------------------

SELECT
    HouseId,
    MAX(PowerValue) AS MaxPower
FROM Heaters
GROUP BY HouseId;



--------------------------------------------------
-- Query 10
-- Group daily usage by house
--------------------------------------------------

SELECT
    h.HouseId,
    COUNT(d.UsageId) AS UsageCount
FROM Houses h
JOIN Heaters he
    ON h.HouseId = he.HouseId
JOIN DailyUsage d
    ON he.HeaterId = d.HeaterId
GROUP BY h.HouseId;



--------------------------------------------------
-- Query 11
-- Group reports by owner
--------------------------------------------------

SELECT
    o.OwnerName,
    COUNT(m.ReportId) AS TotalReports
FROM Owners o
JOIN Houses h
    ON o.OwnerId = h.OwnerId
JOIN MonthlyReport m
    ON h.HouseId = m.HouseId
GROUP BY o.OwnerName;