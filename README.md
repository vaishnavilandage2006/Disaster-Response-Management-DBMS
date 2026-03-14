# Disaster Response Management System

## Introduction

The **Disaster Response Management System** is a DBMS project created to manage information related to disasters and the people affected by them.
During disasters like floods, earthquakes, or cyclones, it becomes difficult to organize data about victims, rescue teams, and relief supplies. This system demonstrates how a database can help store and manage such information efficiently.

The main goal of this project is to design a structured database and perform operations on it using SQL.

---

## Purpose of the Project

The purpose of this project is to understand how database systems can be used in real-life situations.
In disaster situations, proper data management is very important for rescue operations and relief planning.

This project shows how different types of disaster-related data can be connected and managed using a relational database.

---

## Technologies Used

The following tools and technologies were used while building this project:

* **MySQL** – for database creation and management
* **MySQL Workbench** – for designing and running SQL queries
* **HTML** – to create a simple web interface
* **CSS** – for styling the interface
* **JavaScript** – to add simple interactive features
* **Git & GitHub** – for version control and project hosting

---

## Database Description

The database contains multiple tables that store information related to disaster management.

Main tables used in the project include:

* **Area** – stores information about different locations
* **Disaster** – stores records of disaster events
* **Victim** – contains information about affected people
* **Rescue Member** – details of rescue team members
* **Supplies** – information about relief materials
* **Shifting Area** – temporary places where victims are relocated

These tables are connected using relationships to maintain data consistency.

---

## Project Folder Structure

```
Disaster-Response-Management-DBMS
│
├── ER_Diagram
│   └── er_diagram.png
│
├── Database
│   ├── schema.sql
│   └── sample_data.sql
│
├── Web_Interface
│   ├── index.html
│   ├── style.css
│   └── script.js
│
└── README.md
```

---

## Database Files

**schema.sql**
This file contains all SQL commands required to create the database and tables.

**sample_data.sql**
This file contains sample records used to test the database and demonstrate how data is stored.

---

## Web Interface

A simple web interface is included in the project to represent disaster records in a readable format.

The interface includes:

* A table showing disaster information
* A search option to filter disasters
* A basic dashboard layout

This part of the project helps show how database information could be displayed in a web application.

---

## How to Run the Project

### Step 1: Create the Database

Open MySQL Workbench and execute the `schema.sql` file.

### Step 2: Insert Sample Data

Run the `sample_data.sql` file to insert example records into the database.

### Step 3: Open the Web Interface

Go to the **Web_Interface** folder and open the `index.html` file in your web browser.

---

## What I Learned From This Project

While working on this project, I learned:

* How to design an ER diagram
* How to convert an ER diagram into a relational schema
* How to write SQL queries for creating and inserting data
* How to organize a database project structure
* How a simple web interface can display database information

---

## Conclusion

This project demonstrates how database systems can help organize disaster-related information in a structured way. With proper database management, it becomes easier to track disasters, manage rescue operations, and handle relief resources efficiently.

---

## Author
Vaishnavi Landage
2nd Year CSE Student 
