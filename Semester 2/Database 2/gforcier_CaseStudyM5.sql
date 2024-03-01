-- Query 1
UPDATE passenger SET 
	FirstName = "Christine", 
	LastName = "Pearson", 
	Address = "7358 Elementum St.", 
	City = "New Auburn", 
	State = "WI", 
	RegionCode = "54757", 
	LocationLat = "45.204902", 
	LocationLong = "-91.562678"
WHERE PassID = 114;

-- Query 2
REPLACE INTO `passenger`
(`PassID`, `FirstName`, `LastName`, `Address`, `City`, `State`, `Country`, `RegionCode`, `LocationLat`, `LocationLong`) VALUES
	("114", "Christine", "Pearson", "7358 Elementum St.", "New Auburn", "WI", "United States", "54757", "45.204902", "-91.562678");

-- Query 3
DELETE FROM passenger
WHERE PassID BETWEEN 111 AND 112;

-- Query 4
UPDATE 
	flightreservation AS fr INNER JOIN drone AS d USING (DroneID) SET 
	fr.DroneID = "5"
WHERE 
	StatusID BETWEEN 1 AND 4;

-- Query 5
DELETE FROM p, mp
USING package AS p INNER JOIN manifestpackage AS MP USING (PackageID)
WHERE PackageID > 0;

-- Query 6
TRUNCATE TABLE package;

TRUNCATE TABLE manifestpackage;