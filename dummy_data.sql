INSERT INTO Owners (OwnerName, Phone)
VALUES
('Yousef Elazab', '01011111111'),
('Mona Hassan', '01022222222'),
('Omar Samy', '01033333333');

INSERT INTO Houses (Address, OwnerId)
VALUES
('Cairo - Nasr City', 1),
('Mansoura - Talkha', 1),
('Alexandria - Smouha', 2),
('Giza - Dokki', 2),
('Tanta - El Bahr', 3),
('Aswan - Downtown', 3);

INSERT INTO Heaters (HeaterType, PowerValue, HouseId)
VALUES
('Electric Heater', 2.5, 1),
('Gas Heater', 3.2, 1),

('Electric Heater', 2.0, 2),
('Smart Heater', 4.0, 2),

('Gas Heater', 3.5, 3),
('Electric Heater', 2.8, 3),

('Smart Heater', 4.5, 4),
('Gas Heater', 3.0, 4),

('Electric Heater', 2.2, 5),
('Smart Heater', 4.1, 5),

('Gas Heater', 3.3, 6),
('Electric Heater', 2.7, 6);

INSERT INTO DailyUsage (HeaterId, UsageDate, WorkingHours)
VALUES
(1, '2026-05-01', 5),
(1, '2026-05-02', 8),
(1, '2026-05-03', 10),
(2, '2026-05-01', 7),
(2, '2026-05-02', 9);

INSERT INTO MonthlyReport
(HouseId, ReportMonth, TotalWorkingHours, MonthlyAverageCost)
VALUES
(1, '2026-05', 220, 1800),
(2, '2026-05', 200, 1600),
(3, '2026-05', 240, 2100),
(4, '2026-05', 250, 2300),
(5, '2026-05', 190, 1500),
(6, '2026-05', 210, 1700);