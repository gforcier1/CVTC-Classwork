--Query 1
SELECT s.CompanyName,
       Count(o.OrderID) AS NumOrders
  FROM suppliers AS s
       INNER JOIN
       products AS p USING (
           SupplierID
       )
       INNER JOIN
       orderDetails AS od USING (
           ProductID
       )
       INNER JOIN
       orders AS o USING (
           OrderID
       )
 GROUP BY CompanyName
 ORDER BY NumOrders DESC;

--Query 2
SELECT p.ProductName,
       ROUND(SUM( (od.UnitPrice - (od.UnitPrice * od.Discount) ) * od.Quantity), 2) AS TotalSales
  FROM products AS p
       INNER JOIN
       orderDetails AS od USING (
           ProductID
       )
 GROUP BY ProductName
 ORDER BY TotalSales DESC;

--Query 3
SELECT c.CategoryName,
       ROUND(SUM( (od.UnitPrice - (od.UnitPrice * od.Discount) ) * od.Quantity), 2) AS TotalSales
  FROM categories AS c
       INNER JOIN
       products AS p USING (
           CategoryID
       )
       INNER JOIN
       orderDetails AS od USING (
           ProductID
       )
 GROUP BY c.CategoryName
 ORDER BY TotalSales DESC;

--Query 4
SELECT e.FirstName,
       e.LastName,
       COUNT(DISTINCT o.OrderID) AS NumOrders,
       ROUND(SUM( (od.UnitPrice - (od.UnitPrice * od.Discount) ) * od.Quantity), 2) AS TotalSales
  FROM employees AS e
       LEFT JOIN
       orders AS o USING (
           EmployeeID
       )
       LEFT JOIN
       orderDetails AS od USING (
           OrderID
       )
 GROUP BY e.EmployeeID;

--Query 5
SELECT p.ProductName,
       COUNT(DISTINCT od.OrderID) AS TimesOrdered,
       SUM(od.Quantity) AS TotalOrdered
  FROM products AS p
       LEFT JOIN
       orderDetails AS od USING (
           ProductID
       )
 GROUP BY p.ProductName
 ORDER BY TimesOrdered DESC;

--Query 6
SELECT p.ProductName,
       p.UnitPrice AS UnitPrice,
       ROUND(AVG(od.UnitPrice), 2) AS AvgSalePrice,
       ROUND(AVG(od.UnitPrice) - p.UnitPrice, 2) AS DiffInPrice
  FROM products AS p
       INNER JOIN
       orderDetails AS od USING (
           ProductID
       )
 GROUP BY p.ProductName
 ORDER BY DiffInPrice;