USE Disasters_Management;

-- AREA DATA
INSERT INTO Area VALUES
(1,5000,'High','Maharashtra','Kolhapur','Kolhapur'),
(2,3200,'Medium','Maharashtra','Pune','Pune'),
(3,4500,'High','Maharashtra','Mumbai','Mumbai'),
(4,2100,'Low','Maharashtra','Nagpur','Nagpur'),
(5,3800,'Medium','Maharashtra','Satara','Satara'),
(6,4100,'High','Karnataka','Belagavi','Belagavi'),
(7,2900,'Low','Karnataka','Dharwad','Hubli'),
(8,5200,'High','Gujarat','Surat','Surat'),
(9,4700,'Medium','Gujarat','Ahmedabad','Ahmedabad'),
(10,3300,'Low','Goa','North Goa','Panaji');

-- SHIFTING AREAS
INSERT INTO Shifting_Area VALUES
(1,450,'Satara','Satara','Maharashtra'),
(2,390,'Solapur','Solapur','Maharashtra'),
(3,520,'Belagavi','Belagavi','Karnataka'),
(4,310,'Hubli','Dharwad','Karnataka'),
(5,420,'Surat','Surat','Gujarat');

-- SUPPLIES
INSERT INTO Supplies VALUES
(1,'Food Packets',500),
(2,'Medical Kits',300),
(3,'Water Bottles',800),
(4,'Blankets',400),
(5,'Clothes',250);

-- RESCUE MEMBERS
INSERT INTO Rescue_Member VALUES
(1,'Amit','K','Sharma','9000011111'),
(2,'Ravi','P','Singh','9000022222'),
(3,'Neha','S','Verma','9000033333'),
(4,'Rahul','M','Patil','9000044444'),
(5,'Priya','T','Kadam','9000055555');

-- DISASTER DATA
INSERT INTO Disaster VALUES
(1,'Flood',12,7,2024,1),
(2,'Earthquake',5,6,2023,2),
(3,'Cyclone',15,8,2022,3),
(4,'Landslide',20,9,2023,4),
(5,'Fire',8,3,2023,5);

-- SAMPLE VICTIMS (20 records example)
INSERT INTO Victim VALUES
(1,'Ramesh','K','Patil','9876500001',1,1),
(2,'Sita','M','Shinde','9876500002',1,1),
(3,'Rahul','P','Jadhav','9876500003',2,2),
(4,'Anita','S','Patil','9876500004',3,2),
(5,'Mahesh','T','Kadam','9876500005',4,3),
(6,'Sunita','R','More','9876500006',5,3),
(7,'Ajay','D','Kulkarni','9876500007',6,4),
(8,'Kiran','L','Naik','9876500008',7,4),
(9,'Vikas','P','Deshmukh','9876500009',8,5),
(10,'Rani','S','Patil','9876500010',9,5),
(11,'Arun','M','Jain','9876500011',1,1),
(12,'Nisha','R','Mehta','9876500012',2,1),
(13,'Rohit','K','Patel','9876500013',3,2),
(14,'Sneha','S','Shah','9876500014',4,2),
(15,'Asha','T','Gupta','9876500015',5,3),
(16,'Deepak','P','Verma','9876500016',6,3),
(17,'Ritu','L','Nair','9876500017',7,4),
(18,'Sanjay','M','Kapoor','9876500018',8,4),
(19,'Manoj','R','Singh','9876500019',9,5),
(20,'Kavita','S','Yadav','9876500020',10,5);