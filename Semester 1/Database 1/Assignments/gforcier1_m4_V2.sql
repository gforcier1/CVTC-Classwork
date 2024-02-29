-- Query 1
SELECT FirstName, LastName, HomePhone
FROM employees
ORDER BY FirstName;

-- Query 2
SELECT CompanyName, Country, City
FROM suppliers
ORDER BY Country, City, CompanyName;

-- Query 3
SELECT FirstName, LastName, strftime('%m', BirthDate) AS BirthDate
FROM employees
WHERE strftime('%m', BirthDate) = '07'
ORDER BY BirthDate;

-- Query 4
SELECT ProductID, ProductName, UnitPrice, UnitCost, UnitPrice - UnitCost AS Profit
FROM products
ORDER BY ProductName;

-- Query 5
SELECT AVG(julianday(ShippedDate) - julianday(OrderDate)) AS LeadTimeDays
FROM orders;
