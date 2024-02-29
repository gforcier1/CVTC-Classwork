--
-- File generated with SQLiteStudio v3.3.3 on Tue Nov 8 10:46:44 2022
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: pets
DROP TABLE IF EXISTS pets;
CREATE TABLE pets (petID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name VARCHAR (20) NOT NULL, DOB DATE NOT NULL, price DECIMAL (6, 2));
INSERT INTO pets (petID, name, DOB, price) VALUES (1, 'Mogy', '2018-11-23', 400);
INSERT INTO pets (petID, name, DOB, price) VALUES (2, 'Meeka', '2020-09-22', 600.5);
INSERT INTO pets (petID, name, DOB, price) VALUES (3, 'Larry', '2011-07-21', 199.99);
INSERT INTO pets (petID, name, DOB, price) VALUES (4, 'Bob', '2006-01-30', 80.5);
INSERT INTO pets (petID, name, DOB, price) VALUES (5, 'Amethyst', '4/11/2018', 219.06);
INSERT INTO pets (petID, name, DOB, price) VALUES (6, 'Cedric', '2/7/2018', 204.47);
INSERT INTO pets (petID, name, DOB, price) VALUES (7, 'Alea', '5/30/2018', 119.15);
INSERT INTO pets (petID, name, DOB, price) VALUES (8, 'Keaton', '1/18/2019', 116.25);
INSERT INTO pets (petID, name, DOB, price) VALUES (9, 'Lillith', '10/3/2018', 282.35);
INSERT INTO pets (petID, name, DOB, price) VALUES (10, 'Troy', '10/14/2018', 189.61);
INSERT INTO pets (petID, name, DOB, price) VALUES (11, 'Sydnee', '12/26/2018', 204.03);
INSERT INTO pets (petID, name, DOB, price) VALUES (12, 'Emerald', '8/28/2019', 265.38);
INSERT INTO pets (petID, name, DOB, price) VALUES (13, 'Forrest', '2/8/2019', 188.77);
INSERT INTO pets (petID, name, DOB, price) VALUES (14, 'Honorato', '7/31/2019', 196.42);
INSERT INTO pets (petID, name, DOB, price) VALUES (15, 'Halee', '6/29/2018', 17.83);
INSERT INTO pets (petID, name, DOB, price) VALUES (16, 'Martin', '7/9/2019', 98.85);
INSERT INTO pets (petID, name, DOB, price) VALUES (17, 'Eaton', '12/27/2018', 90.92);
INSERT INTO pets (petID, name, DOB, price) VALUES (18, 'Cain', '6/19/2019', 251.01);
INSERT INTO pets (petID, name, DOB, price) VALUES (19, 'Neil', '5/10/2019', 235.59);
INSERT INTO pets (petID, name, DOB, price) VALUES (20, 'Daryl', '12/8/2018', 299.53);
INSERT INTO pets (petID, name, DOB, price) VALUES (21, 'Kalia', '6/10/2019', 282.14);
INSERT INTO pets (petID, name, DOB, price) VALUES (22, 'Oren', '9/8/2018', 148.27);
INSERT INTO pets (petID, name, DOB, price) VALUES (23, 'Coby', '5/4/2019', 142.62);
INSERT INTO pets (petID, name, DOB, price) VALUES (24, 'Rashad', '10/21/2019', 155.42);
INSERT INTO pets (petID, name, DOB, price) VALUES (25, 'Isadora', '9/25/2018', 54.62);
INSERT INTO pets (petID, name, DOB, price) VALUES (26, 'Honorato', '4/28/2019', 175.89);
INSERT INTO pets (petID, name, DOB, price) VALUES (27, 'Grant', '10/30/2019', 109.08);
INSERT INTO pets (petID, name, DOB, price) VALUES (28, 'Kylee', '2/25/2018', 12.01);
INSERT INTO pets (petID, name, DOB, price) VALUES (29, 'Lillian', '10/21/2019', 207.13);
INSERT INTO pets (petID, name, DOB, price) VALUES (30, 'Malik', '12/15/2018', 56.11);
INSERT INTO pets (petID, name, DOB, price) VALUES (31, 'Lael', '12/22/2017', 289.69);
INSERT INTO pets (petID, name, DOB, price) VALUES (32, 'Karyn', '4/2/2019', 107.62);
INSERT INTO pets (petID, name, DOB, price) VALUES (33, 'Mara', '10/14/2018', 123.32);
INSERT INTO pets (petID, name, DOB, price) VALUES (34, 'Seth', '9/10/2018', 63.52);
INSERT INTO pets (petID, name, DOB, price) VALUES (35, 'Jessica', '2/14/2018', 267.27);
INSERT INTO pets (petID, name, DOB, price) VALUES (36, 'Demetrius', '9/13/2018', 247.09);
INSERT INTO pets (petID, name, DOB, price) VALUES (37, 'Chandler', '3/10/2018', 277.95);
INSERT INTO pets (petID, name, DOB, price) VALUES (38, 'Peter', '11/15/2017', 210.74);
INSERT INTO pets (petID, name, DOB, price) VALUES (39, 'Leo', '3/12/2019', 40.88);
INSERT INTO pets (petID, name, DOB, price) VALUES (40, 'Fiona', '8/24/2018', 18.49);
INSERT INTO pets (petID, name, DOB, price) VALUES (41, 'Griffith', '8/14/2019', 276.26);
INSERT INTO pets (petID, name, DOB, price) VALUES (42, 'Miriam', '12/17/2017', 203.61);
INSERT INTO pets (petID, name, DOB, price) VALUES (43, 'Kim', '9/26/2018', 47.25);
INSERT INTO pets (petID, name, DOB, price) VALUES (44, 'Abel', '2/24/2019', 143.09);
INSERT INTO pets (petID, name, DOB, price) VALUES (45, 'Channing', '12/27/2018', 215.27);
INSERT INTO pets (petID, name, DOB, price) VALUES (46, 'Mufutau', '6/16/2019', 190.18);
INSERT INTO pets (petID, name, DOB, price) VALUES (47, 'Stacy', '4/6/2019', 34.87);
INSERT INTO pets (petID, name, DOB, price) VALUES (48, 'Chava', '6/5/2018', 230.39);
INSERT INTO pets (petID, name, DOB, price) VALUES (49, 'Rhea', '12/15/2017', 221.6);
INSERT INTO pets (petID, name, DOB, price) VALUES (50, 'Francis', '4/10/2018', 292.32);
INSERT INTO pets (petID, name, DOB, price) VALUES (51, 'Quintessa', '6/5/2018', 132.43);
INSERT INTO pets (petID, name, DOB, price) VALUES (52, 'Dylan', '11/23/2017', 30.14);
INSERT INTO pets (petID, name, DOB, price) VALUES (53, 'Uta', '9/24/2018', 59.8);
INSERT INTO pets (petID, name, DOB, price) VALUES (54, 'Georgia', '5/18/2018', 87.62);
INSERT INTO pets (petID, name, DOB, price) VALUES (55, 'Meredith', '6/14/2019', 226.13);
INSERT INTO pets (petID, name, DOB, price) VALUES (56, 'Briar', '10/26/2018', 175.94);
INSERT INTO pets (petID, name, DOB, price) VALUES (57, 'Summer', '9/5/2018', 204.32);
INSERT INTO pets (petID, name, DOB, price) VALUES (58, 'Haley', '9/13/2018', 11.96);
INSERT INTO pets (petID, name, DOB, price) VALUES (59, 'Xenos', '11/7/2019', 272.32);
INSERT INTO pets (petID, name, DOB, price) VALUES (60, 'Carly', '10/4/2018', 35.55);
INSERT INTO pets (petID, name, DOB, price) VALUES (61, 'George', '9/6/2019', 194.54);
INSERT INTO pets (petID, name, DOB, price) VALUES (62, 'Ila', '4/3/2019', 270.09);
INSERT INTO pets (petID, name, DOB, price) VALUES (63, 'Nash', '5/31/2018', 40.12);
INSERT INTO pets (petID, name, DOB, price) VALUES (64, 'Isaac', '6/16/2018', 174.28);
INSERT INTO pets (petID, name, DOB, price) VALUES (65, 'Demetrius', '5/10/2019', 272.26);
INSERT INTO pets (petID, name, DOB, price) VALUES (66, 'Malik', '4/12/2019', 298.48);
INSERT INTO pets (petID, name, DOB, price) VALUES (67, 'Kadeem', '7/12/2019', 163.73);
INSERT INTO pets (petID, name, DOB, price) VALUES (68, 'Nomlanga', '2/4/2019', 152.53);
INSERT INTO pets (petID, name, DOB, price) VALUES (69, 'Sloane', '2/22/2019', 180.67);
INSERT INTO pets (petID, name, DOB, price) VALUES (70, 'Whitney', '8/25/2019', 218.12);
INSERT INTO pets (petID, name, DOB, price) VALUES (71, 'Brennan', '7/18/2019', 145.33);
INSERT INTO pets (petID, name, DOB, price) VALUES (72, 'Dominique', '12/29/2018', 282.53);
INSERT INTO pets (petID, name, DOB, price) VALUES (73, 'Xavier', '10/17/2018', 250.76);
INSERT INTO pets (petID, name, DOB, price) VALUES (74, 'Jackson', '11/19/2018', 40.82);
INSERT INTO pets (petID, name, DOB, price) VALUES (75, 'Alika', '12/6/2017', 10.94);
INSERT INTO pets (petID, name, DOB, price) VALUES (76, 'Rosalyn', '4/5/2019', 48.47);
INSERT INTO pets (petID, name, DOB, price) VALUES (77, 'Chastity', '12/20/2017', 95.69);
INSERT INTO pets (petID, name, DOB, price) VALUES (78, 'Abel', '10/26/2019', 169.35);
INSERT INTO pets (petID, name, DOB, price) VALUES (79, 'Lillith', '6/15/2018', 224.04);
INSERT INTO pets (petID, name, DOB, price) VALUES (80, 'Shelby', '8/9/2019', 192.4);
INSERT INTO pets (petID, name, DOB, price) VALUES (81, 'Jin', '9/2/2018', 237.6);
INSERT INTO pets (petID, name, DOB, price) VALUES (82, 'Fay', '1/5/2018', 274.59);
INSERT INTO pets (petID, name, DOB, price) VALUES (83, 'Alfonso', '8/10/2019', 150.85);
INSERT INTO pets (petID, name, DOB, price) VALUES (84, 'Noel', '1/22/2018', 156.84);
INSERT INTO pets (petID, name, DOB, price) VALUES (85, 'Remedios', '12/10/2017', 297.92);
INSERT INTO pets (petID, name, DOB, price) VALUES (86, 'Chiquita', '7/30/2018', 137.99);
INSERT INTO pets (petID, name, DOB, price) VALUES (87, 'Kimberly', '5/5/2018', 111.06);
INSERT INTO pets (petID, name, DOB, price) VALUES (88, 'Gray', '8/2/2019', 170.66);
INSERT INTO pets (petID, name, DOB, price) VALUES (89, 'Clark', '1/24/2019', 97.75);
INSERT INTO pets (petID, name, DOB, price) VALUES (90, 'Colby', '11/8/2018', 224.6);
INSERT INTO pets (petID, name, DOB, price) VALUES (91, 'Samson', '12/4/2017', 161.85);
INSERT INTO pets (petID, name, DOB, price) VALUES (92, 'Emily', '12/22/2018', 159.91);
INSERT INTO pets (petID, name, DOB, price) VALUES (93, 'Irene', '2/4/2019', 48.49);
INSERT INTO pets (petID, name, DOB, price) VALUES (94, 'Holmes', '7/9/2019', 215.61);
INSERT INTO pets (petID, name, DOB, price) VALUES (95, 'Valentine', '11/14/2017', 119.72);
INSERT INTO pets (petID, name, DOB, price) VALUES (96, 'Amelia', '5/4/2018', 47.3);
INSERT INTO pets (petID, name, DOB, price) VALUES (97, 'Genevieve', '7/24/2018', 135.01);
INSERT INTO pets (petID, name, DOB, price) VALUES (98, 'Josephine', '10/1/2019', 70.39);
INSERT INTO pets (petID, name, DOB, price) VALUES (99, 'Chanda', '7/17/2019', 151.65);
INSERT INTO pets (petID, name, DOB, price) VALUES (100, 'September', '11/29/2017', 68.56);
INSERT INTO pets (petID, name, DOB, price) VALUES (101, 'Roth', '4/11/2018', 180.59);
INSERT INTO pets (petID, name, DOB, price) VALUES (102, 'Charlotte', '7/7/2018', 180.3);
INSERT INTO pets (petID, name, DOB, price) VALUES (103, 'Jamalia', '5/19/2019', 18.28);
INSERT INTO pets (petID, name, DOB, price) VALUES (104, 'Amy', '3/11/2019', 19.16);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
