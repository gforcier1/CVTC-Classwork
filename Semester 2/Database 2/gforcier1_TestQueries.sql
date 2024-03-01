-- Query 1
SELECT 
	a.CustomerID, 
	d.FirstName || d.LastName AS DentistName, 
	ss.FirstName || ss.LastName AS AssistantName,
	a.ApptStartTime, 
	a.ApptEndTime
FROM 
	appointments AS a 
	INNER JOIN dentist AS d USING (DentistID) 
	INNER JOIN assistant AS ss USING (AssistantID)
WHERE
	a.ApptStartTime BETWEEN '2023-12-02 00:00:00' AND '2023-18-02 00:00:00';
	
-- Query 2
SELECT 
	c.FirstName,
	c.LastName,
	c.Phone AS CustomerPhone,
	i.CompanyName, 
	i.Phone AS InsurancePhone, 
	s.ServiceDescr, 
	s.ServicePrice
FROM 
	customers AS c 
	INNER JOIN insurance AS i USING (CustomerID)
	INNER JOIN policy AS p USING (InsuranceID)
	INNER JOIN appointments AS a USING (PolicyID)
	INNER JOIN services AS s USING (ServiceID);

-- Query 3
SELECT
	d.FirstName || d.LastName AS DentistName,
	ss.FirstName || ss.LastName AS AssistantName,
	c.FirstName || c.LastName AS CustName,
	a.ApptStartTime,
	a.ApptEndTime
FROM
	customers AS c 
	INNER JOIN appointments AS a USING (CustomerID)
	INNER JOIN denist AS d USING (DentistID)
	INNER JOIN employees AS e USING (EmployeeID)
	INNER JOIN assistant AS ss USING (EmployeeID);
	
-- Query 4
-- Determine the Insurance company used most commonly by our customers
SELECT
	i.CompanyName,
	COUNT(i.InsuranceID) AS AmountOfCustomers
FROM
	insurance AS i
GROUP BY i.InsuranceID
ORDER BY AmountOfCustomer DESC;
