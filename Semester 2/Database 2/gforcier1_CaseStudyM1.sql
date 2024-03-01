-- Query 1
SELECT p.FirstName, 
p.LastName, 
fr.FlightID, 
mp.SeatPrice, ROUND(AVG(mp.SeatPrice) OVER(), 2) AS AvgSeatPrice, 
ROUND((mp.SeatPrice - AVG(mp.SeatPrice) OVER()), 2) AS Difference
FROM passenger AS p INNER JOIN manifestpassenger AS mp USING (PassID) INNER JOIN flightreservation AS fr USING (FlightID)
WHERE PASSID = 13;

-- Query 2
SELECT p.FirstName, 
p.LastName, 
fr.FlightID, 
AvgPrice.SeatPrice, 
AvgSeatPrice, 
(AvgPrice.SeatPrice - AvgSeatPrice) AS Difference
FROM passenger AS p INNER JOIN 
(
SELECT mp.PassID, 
mp.FlightID, 
mp.SeatPrice, 
ROUND(AVG(mp.SeatPrice) OVER(), 2) AS AvgSeatPrice
FROM manifestpassenger AS mp
WHERE mp.PassID = 13
) AS AvgPrice USING (PassID) INNER JOIN flightreservation AS fr USING (FlightID);

-- Query 3
SELECT p.PassID, 
p.FirstName, 
p.LastName, 
COUNT(mp.FlightID) AS NumFlights
FROM passenger AS p LEFT JOIN manifestPassenger AS mp USING (PassID)
GROUP BY p.PassID
ORDER BY NumFlights DESC;

-- Query 4
SELECT 
    *
FROM
    flightreservation
WHERE
    DroneID = 1
        AND DATE_FORMAT(PickUpTime, '%Y') = '2020' 
UNION 
SELECT 
    *
FROM
    flightreservation
WHERE
    DroneID = 10
        AND PickUpTime BETWEEN '2021-10-01 00:00:00' AND '2021-12-01 00:00:00'
ORDER BY DroneID , PickUpTime;

-- Query 5
SELECT fr.DroneID, 
SUM(LatLongDistance(PickUpLat, PickUpLong, DropOffLat, DropOffLong)) AS TotalDistance
FROM flightreservation AS fr
GROUP BY fr.DroneID
ORDER BY TotalDistance DESC;

-- Query 6
SELECT fr.FlightID,
fr.PickUpTime,
fr.CostPerMile,
SUM(LATLONGDISTANCE(fr.PickUpLat,
            fr.PickUpLong,
            fr.DropOffLat,
            fr.DropOffLong)) AS Distance,
(CostPerMile * SUM(LATLONGDISTANCE(fr.PickUpLat,
            fr.PickUpLong,
            fr.DropOffLat,
            fr.DropOffLong))) AS TotalMilageCost
FROM flightreservation AS fr
WHERE fr.FlightID IN
(
SELECT DISTINCT
passgroup.GroupID
FROM
passgroup INNER JOIN
passgroupmember ON passgroup.GroupID = passgroupmember.GroupID
INNER JOIN
manifestpassenger ON passgroupmember.PassID = manifestpassenger.PassID
WHERE GroupTypeID = 1
)
GROUP BY fr.FlightID
Order BY Distance;

-- Query 7
SELECT 
    YEAR(fr.ActDropOffTime) AS Year,
    COUNT(fr.DroneID) AS NumFlights,
    ROUND(AVG(TIMESTAMPDIFF(MINUTE, fr.PickUpTime, fr.EstDropOffTime)), 2) AS AvgDuration
FROM flightreservation AS fr
WHERE StatusID = 5
GROUP BY Year;

-- Query 8
CREATE VIEW `FlightReservationDist` AS
    SELECT 
        flightreservation.FlightID,
        flightreservation.PickUpTime,
        flightreservation.EstDropOffTime,
        flightreservation.ActDropOffTime,
        flightreservation.CostPerMile,
        flightreservation.PickUpLat,
        flightreservation.PickUpLong,
        flightreservation.DropOffLat,
        flightreservation.DropOffLong,
        LATLONGDISTANCE(flightreservation.PickUpLat,
                flightreservation.PickUpLong,
                flightreservation.DropOffLat,
                flightreservation.DropOffLong) AS Distance,
        flightreservation.TypeID,
        flightreservation.StatusID,
        flightreservation.DroneID,
        flightreservation.RemotePilotID
    FROM
        flightreservation;

-- Query 9
CREATE VIEW `PassGroupAffiliates` AS
    SELECT 
        passenger.PassID,
        passenger.FirstName,
        passenger.LastName,
        passgroup.GroupID,
        passgroup.Nickname,
        passgroup.OwnerID,
        passgroup.GroupTypeID
    FROM
        passenger
            LEFT JOIN
        passgroupmember USING (PassID)
            LEFT JOIN
        passgroup USING (GroupID);