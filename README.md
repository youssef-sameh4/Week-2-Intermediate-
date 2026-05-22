# ❄️ IceCity - Week 2 (SQL Database Project)

## 📌 Project Overview
IceCity is a heating management system for houses in a frozen city.

This project focuses on applying SQL concepts in a real scenario including:
- Data insertion
- Querying data using SELECT patterns
- Stored procedures for business logic
- Views for simplified data access

---

## 🔎 Query Use Cases (Explanation)

The SELECT queries were written to simulate real business scenarios:

- Retrieve houses for a specific owner → to display all properties owned by a user.
- Retrieve heaters in a specific house → to map devices to their locations.
- Filter daily usage where working hours > 8 → to analyze high consumption.
- Retrieve monthly reports → to monitor monthly performance.
- Order houses by total monthly cost → to compare energy costs between houses.
- Order heaters by power value → to identify high power consumption devices.
- Total working hours per house per month → to calculate monthly usage per house.
- Average daily working hours per heater → to analyze heater efficiency.
- Maximum heater usage per house → to detect peak usage.
- Group data by house, owner, heater → to generate structured summaries.

---

## ⚙️ Stored Procedure Logic

### CalculateDailyHeaterUsageCost

This stored procedure calculates the daily cost of running a heater.

### Inputs:
- HeaterId
- UsageDate

### Logic:
1. Retrieve heater power value from database
2. Retrieve daily working hours for the given date
3. Apply cost formula (Power × Working Hours)
4. Return:
   - Working Hours
   - Power Value
   - Calculated Cost

### Purpose:
- Centralize cost calculation logic inside the database
- Avoid repeating calculations in application code
- Ensure consistency in results

---

## 👁️ Views Purpose

### vw_HouseHeaterSummary
This view provides a simplified structure combining house and heater data.

It displays:
- HouseId
- HeaterId
- HeaterType
- PowerValue

Purpose:
- Simplify complex JOIN operations
- Provide quick access to heater information per house

---

### vw_MonthlyCostSummary
This view summarizes monthly cost information per house.

It displays:
- HouseId
- ReportMonth
- TotalWorkingHours
- MonthlyAverageCost

Purpose:
- Provide ready-to-use monthly reports
- Avoid repeating aggregation queries
- Make reporting easier and faster

---

## 📌 Design Notes
- Foreign keys are enforced to maintain relationships
- No duplicated data is stored
- No SELECT * is used
- Naming conventions are consistent
- Business logic is handled using stored procedures
- Views are read-only and used for reporting only

---

## 🚀 How to Run
1. Run database creation script
2. Insert dummy data
3. Execute SELECT queries
4. Create stored procedures
5. Create views

---

## 📤 Commit Message
