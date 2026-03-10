-- DELETE OLD DATABASE IF IT EXISTS
DROP DATABASE IF EXISTS Disasters_Management;

-- CREATE NEW DATABASE
CREATE DATABASE Disasters_Management;

-- USE DATABASE
USE Disasters_Management;

-- AREA TABLE
CREATE TABLE Area (
    Area_ID INT PRIMARY KEY,
    Population INT,
    Damage_Extent VARCHAR(20),
    State VARCHAR(50),
    District VARCHAR(50),
    City VARCHAR(50)
);

-- SHIFTING AREA TABLE
CREATE TABLE Shifting_Area (
    Shifting_ID INT PRIMARY KEY,
    Population_Shifted INT,
    Shifting_City VARCHAR(50),
    Shifting_District VARCHAR(50),
    Shifting_State VARCHAR(50)
);

-- SUPPLIES TABLE
CREATE TABLE Supplies (
    Supplies_ID INT PRIMARY KEY,
    Item_Name VARCHAR(50),
    Quantity INT
);

-- RESCUE MEMBER TABLE
CREATE TABLE Rescue_Member (
    Member_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Middle_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Contact_No VARCHAR(15)
);

-- DISASTER TABLE
CREATE TABLE Disaster (
    Disaster_ID INT PRIMARY KEY,
    Disaster_Type VARCHAR(50),
    Day INT,
    Month INT,
    Year INT,
    Area_ID INT,
    FOREIGN KEY (Area_ID) REFERENCES Area(Area_ID)
);

-- VICTIM TABLE
CREATE TABLE Victim (
    Victim_ID INT PRIMARY KEY,
    F_Name VARCHAR(50),
    M_Name VARCHAR(50),
    L_Name VARCHAR(50),
    Mobile_Number VARCHAR(15),
    Area_ID INT,
    Shifting_ID INT,
    FOREIGN KEY (Area_ID) REFERENCES Area(Area_ID),
    FOREIGN KEY (Shifting_ID) REFERENCES Shifting_Area(Shifting_ID)
);

-- VICTIM RESCUE RELATION
CREATE TABLE Victim_Rescue (
    Victim_ID INT,
    Member_ID INT,
    PRIMARY KEY (Victim_ID, Member_ID),
    FOREIGN KEY (Victim_ID) REFERENCES Victim(Victim_ID),
    FOREIGN KEY (Member_ID) REFERENCES Rescue_Member(Member_ID)
);

-- AREA SUPPLIES RELATION
CREATE TABLE Area_Supplies (
    Area_ID INT,
    Supplies_ID INT,
    PRIMARY KEY (Area_ID, Supplies_ID),
    FOREIGN KEY (Area_ID) REFERENCES Area(Area_ID),
    FOREIGN KEY (Supplies_ID) REFERENCES Supplies(Supplies_ID)
);

-- SHIFTING SUPPLIES RELATION
CREATE TABLE Shifting_Supplies (
    Shifting_ID INT,
    Supplies_ID INT,
    PRIMARY KEY (Shifting_ID, Supplies_ID),
    FOREIGN KEY (Shifting_ID) REFERENCES Shifting_Area(Shifting_ID),
    FOREIGN KEY (Supplies_ID) REFERENCES Supplies(Supplies_ID)
);