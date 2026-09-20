## **Employee Salary ALV Report**

**About the Project**

Employee Salary ALV Report is a beginner-level SAP ABAP project developed to understand the basic concepts of ALV reporting.

The project stores employee details in an internal table and displays the data using an ALV Grid. A simple selection screen is also provided to filter employees based on their department.

Project Objective

The main objective of this project is to understand how a basic ABAP report is created and how internal table data can be displayed in an ALV report.

**Features**

- Displays employee details using ALV Grid
- Uses an ABAP structure to define employee data
- Uses a work area to handle individual employee records
- Uses an internal table to store multiple employee records
- Uses a field catalog to define ALV columns
- Provides department-based filtering through a selection screen

Employee Details

The report contains the following fields:

- Employee ID
- Name
- Department
- Salary
- Location

**ABAP Concepts Used**

1. Structure

A custom structure "TY_EMPLOYEE" is created to define the fields required for an employee record.

2. Work Area

"GS_EMPLOYEE" is used as a work area to store one employee record at a time.

3. Internal Table

"GT_EMPLOYEE" is used to store multiple employee records.

4. APPEND

The "APPEND" statement is used to add employee records from the work area to the internal table.

5. LOOP AT

The internal table is processed using "LOOP AT" to check employee records.

6. Selection Screen

A "PARAMETERS" statement is used to allow the user to enter a department.

7. Filtering

The entered department is compared with the employee department, and matching records are stored in a separate internal table.

8. Field Catalog

A field catalog is created to define the columns and headings displayed in the ALV.

9. ALV Grid

"REUSE_ALV_GRID_DISPLAY" is used to display the employee data in an ALV Grid.

**Program Flow**

User enters Department
        |
        v
Selection Screen
        |
        v
Employee Data
        |
        v
Internal Table
        |
        v
Filter by Department
        |
        v
Filtered Internal Table
        |
        v
Field Catalog
        |
        v
ALV Grid
        |
        v
Employee Report

Sample Data

Employee ID| Name| Department| Salary| Location
1001| Ravi| IT| 45000| Hyderabad
1002| Anu| HR| 38000| Bangalore
1003| Kiran| Finance| 52000| Chennai
1004| Priya| IT| 48000| Pune

For example, if the user enters "IT" in the department field, the report displays the employees belonging to the IT department.

**Technologies Used**

- SAP ABAP
- SAP GUI
- ABAP Report
- ALV Grid
- Internal Tables
- Structures
- Work Areas

**Learning Outcomes**

Through this project, I learned how to:

- Create an executable ABAP report
- Define custom structures
- Work with work areas and internal tables
- Add records to internal tables
- Process internal table data using loops
- Create a basic selection screen
- Filter internal table data
- Create an ALV field catalog
- Display internal table data using ALV Grid
- Improving the ALV layout
- Adding more employee-related fields
