CREATE DATABASE IceCityDB;
GO

USE IceCityDB;
GO

CREATE TABLE Owners (
    OwnerId INT PRIMARY KEY IDENTITY(1,1),
    OwnerName VARCHAR(100) NOT NULL,
    Phone VARCHAR(20)
);

CREATE TABLE Houses (
    HouseId INT PRIMARY KEY IDENTITY(1,1),
    Address VARCHAR(200) NOT NULL,
    OwnerId INT NOT NULL,

    CONSTRAINT FK_Houses_Owners
    FOREIGN KEY (OwnerId)
    REFERENCES Owners(OwnerId)
);

CREATE TABLE Heaters (
    HeaterId INT PRIMARY KEY IDENTITY(1,1),
    HeaterType VARCHAR(100) NOT NULL,
    PowerValue FLOAT NOT NULL,
    HouseId INT NOT NULL,

    CONSTRAINT FK_Heaters_Houses
    FOREIGN KEY (HouseId)
    REFERENCES Houses(HouseId)
);

CREATE TABLE DailyUsage (
    UsageId INT PRIMARY KEY IDENTITY(1,1),
    HeaterId INT NOT NULL,
    UsageDate DATE NOT NULL,
    WorkingHours FLOAT NOT NULL,

    CONSTRAINT FK_DailyUsage_Heaters
    FOREIGN KEY (HeaterId)
    REFERENCES Heaters(HeaterId)
);

CREATE TABLE MonthlyReport (
    ReportId INT PRIMARY KEY IDENTITY(1,1),
    HouseId INT NOT NULL,
    ReportMonth VARCHAR(20) NOT NULL,
    TotalWorkingHours decimal NOT NULL,
    MonthlyAverageCost decimal NOT NULL,

    CONSTRAINT FK_MonthlyReport_Houses
    FOREIGN KEY (HouseId)
    REFERENCES Houses(HouseId)
);

