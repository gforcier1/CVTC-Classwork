--Query 1
SELECT ProductName,
       QuantityPerUnit,
       UnitPrice
  FROM products
 WHERE Discontinued = '0'
 ORDER BY ProductName;
 
-- Query 2
SELECT OrderID,
       CustomerID,
       OrderDate,
       RequiredDate
  FROM orders
 WHERE ShippedDate IS NULL
 ORDER BY OrderDate,
          RequiredDate;
          
-- Query 3
SELECT OrderID,
       ROUND(SUM( (UnitPrice - (UnitPrice * Discount) ) * Quantity), 2) AS Subtotal
  FROM orderDetails
 WHERE OrderID = '10360' OR 
       OrderID = '10436' OR 
       OrderID = '10449'
 GROUP BY OrderID
 ORDER BY OrderID;
 
-- Query 4
SELECT ProductName,
       QuantityPerUnit,
       SupplierID
  FROM products
 WHERE QuantityPerUnit LIKE '%500 g%';
 
-- Query 5
SELECT Country,
       COUNT(Country) AS NumCustomers
  FROM customers
 GROUP BY Country
 ORDER BY NumCustomers DESC;
 
-- Query 6
SELECT CustomerID,
       COUNT(CustomerID) AS NumOrders
  FROM orders
 GROUP BY CustomerID
 ORDER BY NumOrders DESC;
 
-- Query 7
-- All the orders are for the same customer and one of the Freight charges is significantly less that the others. It’s very possible that there was an unauthrized discount, but I can’t be sure.
SELECT OrderID,
       EmployeeID,
       CustomerID,
       ShipName,
       ShipAddress,
       Freight
  FROM orders
 WHERE OrderID = '10360' OR 
       OrderID = '10436' OR 
       OrderID = '10449';
       
-- Query 8
SELECT (julianday(ShippedDate) - julianday(RequiredDate) ) AS DaysLate,
       COUNT(OrderID) AS NumOrders
  FROM orders
 WHERE ShippedDate > RequiredDate
 GROUP BY DaysLate
 ORDER BY DaysLate;
 
-- Query 9
SELECT CategoryID,
       ROUND(AVG(UnitPrice - UnitCost), 2) AS Profit
  FROM products
 GROUP BY CategoryID
HAVING Profit > 10
 ORDER BY CategoryID;
