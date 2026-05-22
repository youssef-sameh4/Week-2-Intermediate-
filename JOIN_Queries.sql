SELECT
    o.OwnerName,
    h.Address
FROM Owners o
JOIN Houses h
    ON o.OwnerId = h.OwnerId;


    SELECT
    h.Address,
    he.HeaterType
FROM Houses h
JOIN Heaters he
    ON h.HouseId = he.HouseId;


    SELECT
    he.HeaterType,
    d.UsageDate,
    d.WorkingHours
FROM Heaters he
JOIN DailyUsage d
    ON he.HeaterId = d.HeaterId;


    SELECT
    h.Address,
    m.MonthlyAverageCost
FROM Houses h
JOIN MonthlyReport m
    ON h.HouseId = m.HouseId;