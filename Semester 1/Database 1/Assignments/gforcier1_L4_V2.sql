-- Query 1
SELECT ModelID, Brand, Model, TopSpeed
FROM model
ORDER BY TopSpeed DESC;

--Query 2
SELECT AVG(Salary) AS AverageSalary
FROM remotepilot;

-- Query 3
SELECT PASSID, FirstName, LastName
FROM passenger
WHERE State = 'MI'
ORDER BY LastName, FirstName;

-- Query 4
SELECT ModelID, Brand, Model
FROM model
WHERE TypeID = '2' OR '3'
ORDER BY Brand, Model;

-- Query 5
SELECT COUNT(strftime('%Y', PickUpTime)) AS Flights2018
FROM flightReservation
WHERE strftime('%Y', PickUpTime) = '2018';

-- Query 6
SELECT FlightID, TypeID, PickUpTime
FROM flightReservation
WHERE StatusID = '3'
ORDER BY TypeID, PickUpTime;

--Query 7
SELECT FlightID, ActDropOffTime, EstDropOffTime, ROUND((julianday(ActDropOffTime) - julianday(EstDropOffTime)), 3) AS TimeDifference
FROM flightReservation
WHERE ActDropOffTime IS NOT NULL
ORDER BY TimeDifference DESC;