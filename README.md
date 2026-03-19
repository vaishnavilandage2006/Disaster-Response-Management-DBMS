# Disaster Response Management System (DBMS Project)

## Overview

The Disaster Response Management System is a DBMS mini-project created to manage and organize information during emergency situations like floods, earthquakes, and cyclones.

In real-life disasters, handling data about victims, rescue teams, and supplies becomes difficult. This project shows how a database system can simplify and organize all this information efficiently.

---

## Objective

The main goal of this project is to:

* Design a proper ER diagram with constraints
* Convert it into a relational database
* Perform operations using SQL
* Understand how DBMS works in real-world scenarios

---

## Why This Project Matters

During disasters, proper data management helps in:

* Faster rescue operations
* Tracking victims
* Managing relief supplies
* Better planning and coordination

This project demonstrates how a structured database can make these processes easier.

---

## Technologies Used

* MySQL – Database creation
* MySQL Workbench – Query execution
* HTML – Structure of web page
* CSS – Styling
* JavaScript – Basic interactivity
* Git & GitHub – Version control

---

## Database Design

The system is designed using an ER Diagram with cardinality and participation constraints (min-max).

### Main Entities

* Area – Stores location details
* Disaster – Information about disasters
* Victim – Details of affected people
* Rescue_Member – Rescue team members
* Supplies – Relief materials
* Shifting_Area – Temporary shelters

---

## ER Diagram (With Constraints)

The ER diagram includes:

* Cardinality ratios (1:N, M:N)
* Participation constraints (Mandatory / Optional)
* Min-Max notation
* Relationship attributes

File Location:
`ER_Diagram/er_diagram.png`

This diagram clearly represents how all entities are connected in the system.

---

## Project Structure

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

* schema.sql → Contains SQL commands to create tables
* sample_data.sql → Contains sample records for testing

---

## Web Interface

A simple web interface is provided to display disaster data.

### Features:

* View disaster records
* Search and filter functionality
* Clean and simple layout

---

## How to Run the Project

### Step 1: Create Database

Run `schema.sql` in MySQL Workbench

### Step 2: Insert Data

Run `sample_data.sql`

### Step 3: Run Interface

Open `index.html` in your browser

---

## What I Learned

* Designing ER diagrams with constraints
* Converting ER model into relational schema
* Writing SQL queries
* Structuring a DBMS project
* Connecting database with frontend

---

## Conclusion

This project shows how a Disaster Management System using DBMS can help manage important data in an organized way during emergencies.

---

## Author

Vaishnavi Landage
2nd Year CSE Student
