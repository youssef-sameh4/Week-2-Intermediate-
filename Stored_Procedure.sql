CREATE PROCEDURE CalculateDailyHeaterUsageCost
    @HeaterId INT,
    @UsageDate DATE
AS
BEGIN

    DECLARE @Power FLOAT;
    DECLARE @Hours FLOAT;
    DECLARE @Cost FLOAT;

    SELECT @Power = PowerValue
    FROM Heaters
    WHERE HeaterId = @HeaterId;

    SELECT @Hours = WorkingHours
    FROM DailyUsage
    WHERE HeaterId = @HeaterId
    AND UsageDate = @UsageDate;

    SET @Cost = @Power * @Hours * 5;

    SELECT
        @Hours AS WorkingHours,
        @Power AS PowerValue,
        @Cost AS DailyCost;
END;

EXEC CalculateDailyHeaterUsageCost
    @HeaterId = 1,
    @UsageDate = '2026-05-01';