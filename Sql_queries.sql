CREATE DATABASE disasters_managements;
USE disasters_managements;
CREATE TABLE Area(
Area_ID INT PRIMARY KEY,
Population INT,
Damage_Extent VARCHAR(20),
State VARCHAR(50),
District VARCHAR(50),
City VARCHAR(50)
);
CREATE TABLE Disaster(
Disaster_ID INT PRIMARY KEY,
Disaster_Type VARCHAR(50),
Day INT,
Month INT,
Year INT,
Area_ID INT,
FOREIGN KEY (Area_ID) REFERENCES Area(Area_ID)
);
CREATE TABLE Victim(
Victim_ID INT PRIMARY KEY,
F_Name VARCHAR(50),
M_Name VARCHAR(50),
L_Name VARCHAR(50),
Mobile_Number VARCHAR(15),
Area_ID INT,
Shifting_ID INT
);
CREATE TABLE Victim(
Victim_ID INT PRIMARY KEY,
F_Name VARCHAR(50),
M_Name VARCHAR(50),
L_Name VARCHAR(50),
Mobile_Number VARCHAR(15),
Area_ID INT,
Shifting_ID INT
);
CREATE TABLE Rescue_Member(
Member_ID INT PRIMARY KEY,
First_Name VARCHAR(50),
Middle_Name VARCHAR(50),
Last_Name VARCHAR(50),
Contact_No VARCHAR(15)
);
CREATE TABLE Supplies(
Supplies_ID INT PRIMARY KEY,
Item_Name VARCHAR(50),
Quantity INT
);
CREATE TABLE Shifting_Area(
Shifting_ID INT PRIMARY KEY,
Population_Shifted INT,
Shifting_City VARCHAR(50),
Shifting_District VARCHAR(50),
Shifting_State VARCHAR(50)
);
CREATE TABLE Victim_Rescue(
Victim_ID INT,
Member_ID INT,
PRIMARY KEY(Victim_ID,Member_ID),
FOREIGN KEY (Victim_ID) REFERENCES Victim(Victim_ID),
FOREIGN KEY (Member_ID) REFERENCES Rescue_Member(Member_ID)
);
CREATE TABLE Rescue_Member(
Member_ID INT PRIMARY KEY,
First_Name VARCHAR(50),
Middle_Name VARCHAR(50),
Last_Name VARCHAR(50),
Contact_No VARCHAR(15)
);
CREATE TABLE Supplies(
Supplies_ID INT PRIMARY KEY,
Item_Name VARCHAR(50),
Quantity INT
);
CREATE TABLE Shifting_Area(
Shifting_ID INT PRIMARY KEY,
Population_Shifted INT,
Shifting_City VARCHAR(50),
Shifting_District VARCHAR(50),
Shifting_State VARCHAR(50)
);
CREATE TABLE Victim_Rescue(
Victim_ID INT,
Member_ID INT,
PRIMARY KEY(Victim_ID,Member_ID),
FOREIGN KEY (Victim_ID) REFERENCES Victim(Victim_ID),
FOREIGN KEY (Member_ID) REFERENCES Rescue_Member(Member_ID)
);
CREATE TABLE Area_Supplies(
Area_ID INT,
Supplies_ID INT,
PRIMARY KEY(Area_ID,Supplies_ID),
FOREIGN KEY (Area_ID) REFERENCES Area(Area_ID),
FOREIGN KEY (Supplies_ID) REFERENCES Supplies(Supplies_ID)
);
CREATE TABLE Shifting_Supplies(
Shifting_ID INT,
Supplies_ID INT,
PRIMARY KEY(Shifting_ID,Supplies_ID),
FOREIGN KEY (Shifting_ID) REFERENCES Shifting_Area(Shifting_ID),
FOREIGN KEY (Supplies_ID) REFERENCES Supplies(Supplies_ID)
);
INSERT INTO Area VALUES
(1,5000,'High','Maharashtra','Kolhapur','Kolhapur'),
(2,4500,'Medium','Maharashtra','Pune','Pune'),
(3,7000,'High','Maharashtra','Mumbai','Mumbai'),
(4,3000,'Low','Maharashtra','Nagpur','Nagpur'),
(5,4200,'Medium','Maharashtra','Nashik','Nashik');
INSERT INTO Disaster VALUES
(1,'Flood',12,7,2024,1),
(2,'Earthquake',5,6,2023,2),
(3,'Cyclone',15,8,2022,3),
(4,'Landslide',10,9,2023,4),
(5,'Flood',18,7,2024,5);
INSERT INTO Victim VALUES
(1,'Ramesh','K','Patil','9000000001',1,1),
(2,'Sita','M','Shinde','9000000002',1,1),
(3,'Rahul','P','Jadhav','9000000003',2,2),
(4,'Anita','S','Patil','9000000004',3,2),
(5,'Vijay','D','Sharma','9000000005',4,2),
(6,'Neha','A','Joshi','9000000006',5,1);
INSERT INTO Rescue_Member VALUES
(1,'Amit','K','Sharma','9876541111'),
(2,'Ravi','P','Singh','9876542222'),
(3,'Neha','S','Verma','9876543333'),
(4,'Raj','A','Patil','9876544444');
INSERT INTO Supplies VALUES
(1,'Food Packets',500),
(2,'Medical Kits',200),
(3,'Water Bottles',1000),
(4,'Blankets',400),
(5,'Tents',100);
INSERT INTO Shifting_Area VALUES
(1,500,'Satara','Satara','Maharashtra'),
(2,400,'Solapur','Solapur','Maharashtra');

/* 1. Display all areas */
SELECT * FROM Area;


/* 2. Display all disasters */
SELECT * FROM Disaster;


/* 3. Display all victims */
SELECT * FROM Victim;


/* 4. Display all rescue members */
SELECT * FROM Rescue_Member;


/* 5. Display all supplies available */
SELECT * FROM Supplies;


/* 6. Show only cities from area table */
SELECT City FROM Area;


/* 7. Show population of all areas */
SELECT Population FROM Area;


/* 8. Show disaster types */
SELECT Disaster_Type FROM Disaster;


/* 9. Show victim first names */
SELECT F_Name FROM Victim;


/* 10. Show all shifting cities */
SELECT Shifting_City FROM Shifting_Area;


/* 11. Show supply item names */
SELECT Item_Name FROM Supplies;


/* 12. Show contact numbers of rescue members */
SELECT Contact_No FROM Rescue_Member;


/* 13. Show districts affected */
SELECT District FROM Area;


/* 14. Show disaster year */
SELECT Year FROM Disaster;


/* 15. Show quantity of supplies */
SELECT Quantity FROM Supplies;



/* =====================================================
   FILTER QUERIES (WHERE CLAUSE)
   ===================================================== */


/* 16. Show areas with high damage */
SELECT * 
FROM Area
WHERE Damage_Extent = 'High';


/* 17. Show victims from area 1 */
SELECT *
FROM Victim
WHERE Area_ID = 1;


/* 18. Show disasters after 2023 */
SELECT *
FROM Disaster
WHERE Year > 2023;


/* 19. Show supplies with quantity greater than 200 */
SELECT *
FROM Supplies
WHERE Quantity > 200;


/* 20. Show rescue members with specific last name */
SELECT *
FROM Rescue_Member
WHERE Last_Name = 'Patil';



/* =====================================================
   JOIN QUERIES (MEDIUM LEVEL)
   ===================================================== */


/* 21. Show victims with their area city */
SELECT F_Name, L_Name, City
FROM Victim
JOIN Area
ON Victim.Area_ID = Area.Area_ID;


/* 22. Show disasters and their location */
SELECT Disaster_Type, City
FROM Disaster
JOIN Area
ON Disaster.Area_ID = Area.Area_ID;


/* 23. Show victims and rescue members who rescued them */
SELECT Victim_ID, First_Name, Last_Name
FROM Victim_Rescue
JOIN Rescue_Member
ON Victim_Rescue.Member_ID = Rescue_Member.Member_ID;


/* 24. Show areas and the supplies they need */
SELECT City, Item_Name
FROM Area_Supplies
JOIN Area
ON Area.Area_ID = Area_Supplies.Area_ID
JOIN Supplies
ON Supplies.Supplies_ID = Area_Supplies.Supplies_ID;


/* 25. Show shifting areas receiving supplies */
SELECT Shifting_City, Item_Name
FROM Shifting_Supplies
JOIN Shifting_Area
ON Shifting_Area.Shifting_ID = Shifting_Supplies.Shifting_ID
JOIN Supplies
ON Supplies.Supplies_ID = Shifting_Supplies.Supplies_ID;


/* 26. Show victims and their shifting city */
SELECT F_Name, L_Name, Shifting_City
FROM Victim
JOIN Shifting_Area
ON Victim.Shifting_ID = Shifting_Area.Shifting_ID;


/* 27. Show disasters with population affected */
SELECT Disaster_Type, Population
FROM Disaster
JOIN Area
ON Disaster.Area_ID = Area.Area_ID;


/* 28. Show rescue members helping victims */
SELECT First_Name, Victim_ID
FROM Rescue_Member
JOIN Victim_Rescue
ON Rescue_Member.Member_ID = Victim_Rescue.Member_ID;



/* =====================================================
   AGGREGATE QUERIES (ADVANCED)
   ===================================================== */


/* 29. Count number of victims in each area */
SELECT Area_ID, COUNT(Victim_ID) AS Total_Victims
FROM Victim
GROUP BY Area_ID;


/* 30. Total quantity of supplies */
SELECT SUM(Quantity) AS Total_Supplies
FROM Supplies;


/* 31. Average population of areas */
SELECT AVG(Population) AS Average_Population
FROM Area;


/* 32. Maximum population area */
SELECT MAX(Population) AS Highest_Population
FROM Area;


/* 33. Minimum population area */
SELECT MIN(Population) AS Lowest_Population
FROM Area;



/* =====================================================
   ORDER BY QUERIES
   ===================================================== */


/* 34. Show areas sorted by population (descending) */
SELECT *
FROM Area
ORDER BY Population DESC;


/* 35. Show victims sorted alphabetically */
SELECT *
FROM Victim
ORDER BY F_Name;


/* 36. Show disasters sorted by year */
SELECT *
FROM Disaster
ORDER BY Year DESC;


/* 37. Show supplies sorted by quantity */
SELECT *
FROM Supplies
ORDER BY Quantity DESC;



/* =====================================================
   GROUP BY + HAVING
   ===================================================== */


/* 38. Count victims per area where victims > 1 */
SELECT Area_ID, COUNT(Victim_ID)
FROM Victim
GROUP BY Area_ID
HAVING COUNT(Victim_ID) > 1;


/* 39. Count disasters per area */
SELECT Area_ID, COUNT(Disaster_ID)
FROM Disaster
GROUP BY Area_ID;



/* =====================================================
   SUBQUERY (ADVANCED)
   ===================================================== */


/* 40. Show victims from areas with high damage */
SELECT *
FROM Victim
WHERE Area_ID IN
(
SELECT Area_ID
FROM Area
WHERE Damage_Extent = 'High'
);


/* 41. Show areas with population greater than average */
SELECT *
FROM Area
WHERE Population >
(
SELECT AVG(Population)
FROM Area
);



/* =====================================================
   VIEW (ADVANCED DBMS FEATURE)
   ===================================================== */


/* 42. Create view for victim report */
CREATE VIEW Victim_Report AS
SELECT F_Name, L_Name, City
FROM Victim
JOIN Area
ON Victim.Area_ID = Area.Area_ID;


/* 43. Display victim report view */
SELECT * FROM Victim_Report;



/* =====================================================
   TRIGGER (ADVANCED DBMS FEATURE)
   ===================================================== */


/* 44. Trigger to reduce supplies after distribution */
CREATE TRIGGER reduce_supply
AFTER INSERT ON Shifting_Supplies
FOR EACH ROW
UPDATE Supplies
SET Quantity = Quantity - 10
WHERE Supplies_ID = NEW.Supplies_ID;



/* =====================================================
   FINAL ANALYSIS QUERIES
   ===================================================== */


/* 45. Most affected area */
SELECT City, Population
FROM Area
ORDER BY Population DESC
LIMIT 1;


/* 46. Total number of disasters */
SELECT COUNT(*) AS Total_Disasters
FROM Disaster;


/* 47. Total number of victims */
SELECT COUNT(*) AS Total_Victims
FROM Victim;


/* 48. Total rescue members */
SELECT COUNT(*) AS Total_Rescue_Members
FROM Rescue_Member;


/* 49. Total supply items */
SELECT COUNT(*) AS Total_Supply_Items
FROM Supplies;


/* 50. List all disaster types and affected cities */
SELECT Disaster_Type, City
FROM Disaster
JOIN Area
ON Disaster.Area_ID = Area.Area_ID;


