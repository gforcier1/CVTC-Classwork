--
-- File generated with SQLiteStudio v3.3.3 on Tue Nov 8 18:39:17 2022
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: authorizedcategory
DROP TABLE IF EXISTS authorizedcategory;
CREATE TABLE authorizedcategory (RemotePilotID INTEGER NOT NULL, TypeID INTEGER NOT NULL, AcquiredDate DATE, ExpiresDate DATE, LicenseDescription VARCHAR (50), PRIMARY KEY (RemotePilotID, TypeID));

-- Table: drone
DROP TABLE IF EXISTS drone;
CREATE TABLE drone (DroneID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Color VARCHAR (15), AddedOn DATE, ModelID INTEGER REFERENCES model (ModelID) NOT NULL);

-- Table: flightreservation
DROP TABLE IF EXISTS flightreservation;
CREATE TABLE flightreservation (FlightID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, PickUpTime DATETIME, EstDropOffTime DATETIME, ActDropOffTime DATETIME, CostPerMile DECIMAL (5, 2), PickUpLat DECIMAL (9, 6), PickUpLong DECIMAL (9, 6), DropOffLat DECIMAL (9, 6), DropOffLong DECIMAL (9, 6), TypeID INTEGER REFERENCES flighttype (TypeID) NOT NULL, StatusID INTEGER REFERENCES flightstatus (StatusID) NOT NULL, DroneID INTEGER NOT NULL REFERENCES drone (DroneID), RemotePilotID INTEGER REFERENCES remotepilot (RemotePilotID) NOT NULL);

-- Table: flightstatus
DROP TABLE IF EXISTS flightstatus;
CREATE TABLE flightstatus (StatusID INTEGER PRIMARY KEY NOT NULL, Description VARCHAR (12));
INSERT INTO flightstatus (StatusID, Description) VALUES (1, 'Pending');
INSERT INTO flightstatus (StatusID, Description) VALUES (2, 'Confirmed');
INSERT INTO flightstatus (StatusID, Description) VALUES (3, 'Cancelled');
INSERT INTO flightstatus (StatusID, Description) VALUES (4, 'In Progress');
INSERT INTO flightstatus (StatusID, Description) VALUES (5, 'Complete');

-- Table: flighttype
DROP TABLE IF EXISTS flighttype;
CREATE TABLE flighttype (TypeID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Description VARCHAR (25));
INSERT INTO flighttype (TypeID, Description) VALUES (1, 'Passenger');
INSERT INTO flighttype (TypeID, Description) VALUES (2, 'Package');
INSERT INTO flighttype (TypeID, Description) VALUES (3, 'Passenger and Package');

-- Table: grouptype
DROP TABLE IF EXISTS grouptype;
CREATE TABLE grouptype (GroupTypeID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Description VARCHAR (15));
INSERT INTO grouptype (GroupTypeID, Description) VALUES (1, 'Family');
INSERT INTO grouptype (GroupTypeID, Description) VALUES (2, 'Business');

-- Table: manifestpackage
DROP TABLE IF EXISTS manifestpackage;
CREATE TABLE manifestpackage (FlightID INTEGER NOT NULL, PackageID INTEGER NOT NULL, PRIMARY KEY (FlightID, PackageID));

-- Table: manifestpassenger
DROP TABLE IF EXISTS manifestpassenger;
CREATE TABLE manifestpassenger (FlightID INTEGER NOT NULL, PassID INTEGER NOT NULL, SeatPrice DECIMAL (5, 2), PRIMARY KEY (FlightID, PassID));

-- Table: model
DROP TABLE IF EXISTS model;
CREATE TABLE model (ModelID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Brand VARCHAR (30), Description VARCHAR (60), Model VARCHAR (20), TopSpeed DECIMAL (6, 2), MaxRange DECIMAL (6, 2), MaxCargoWeight DECIMAL (6, 2), MaxSeats INTEGER, TypeID INTEGER REFERENCES flighttype (TypeID) NOT NULL);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (1, 'DJI', 'Small package delivery drone', 'Mavic', 90, 100, 30, 1, 2);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (2, 'DJI', 'Short range small package delivery', 'Spark', 120, 50, 20, 1, 2);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (3, 'DJI', 'Medium package transport', 'Phantom', 100, 80, 40, 1, 2);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (4, 'DJI', 'Large package transport', 'Inspire', 80, 120, 60, 1, 2);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (5, 'GoPro', 'High speed small package delivery', 'Karma', 200, 120, 30, 1, 2);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (6, 'GoPro', 'High speed medium package transport', 'Hero6', 180, 110, 40, 1, 2);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (7, 'Yuneec', '6 passenger transport', 'Typhoon 6X', 122, 250, 1500, 6, 1);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (8, 'Yuneec', '4 passenger transport', 'Mantis Q', 168, 300, 1000, 4, 3);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (9, 'Yuneec', '6 passenger transport, high speed', 'Typhoon H', 168, 250, 1500, 6, 1);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (10, 'Parrot', '2 passenger transport', 'Bebob', 186, 450, 500, 2, 1);
INSERT INTO model (ModelID, Brand, Description, Model, TopSpeed, MaxRange, MaxCargoWeight, MaxSeats, TypeID) VALUES (11, 'Parrot', '2 passenger, long range', 'ANAFI', 204, 800, 500, 2, 1);

-- Table: package
DROP TABLE IF EXISTS package;
CREATE TABLE package (PackageID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Length DECIMAL (6, 2), Width DECIMAL (6, 2), Height DECIMAL (6, 2), Weight DECIMAL (6, 2));

-- Table: passenger
DROP TABLE IF EXISTS passenger;
CREATE TABLE passenger (PassID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, FirstName VARCHAR (25), LastName VARCHAR (25), Address VARCHAR (50), City VARCHAR (40), State VARCHAR (25), Country VARCHAR (40), RegionCode VARCHAR (10), LocationLat DECIMAL (9, 6), LocationLong DECIMAL (9, 6));

-- Table: passgroup
DROP TABLE IF EXISTS passgroup;
CREATE TABLE passgroup (GroupID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Nickname VARCHAR (40), Description VARCHAR (150), GroupTypeID INTEGER REFERENCES GroupType (GroupTypeID) NOT NULL);

-- Table: passgroupmember
DROP TABLE IF EXISTS passgroupmember;
CREATE TABLE passgroupmember (PassID INTEGER NOT NULL, GroupID INTEGER NOT NULL, PRIMARY KEY (PassID, GroupID));

-- Table: remotepilot
DROP TABLE IF EXISTS remotepilot;
CREATE TABLE remotepilot (RemotePilotID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, FirstName VARCHAR (25), LastName VARCHAR (25), Salary DECIMAL (8, 2));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
