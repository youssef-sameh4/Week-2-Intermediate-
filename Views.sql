CREATE VIEW vw_HouseHeaterSummary AS
SELECT
    h.HouseId,
    he.HeaterId,
    he.HeaterType,
    he.PowerValue
FROM Houses h
JOIN Heaters he
    ON h.HouseId = he.HouseId;


    CREATE VIEW vw_MonthlyCostSummary AS
SELECT
    HouseId,
    ReportMonth,
    TotalWorkingHours,
    MonthlyAverageCost
FROM MonthlyReport;