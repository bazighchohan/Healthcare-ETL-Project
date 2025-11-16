Healthcare ETL Project
Developed by Bazigh Ali

This project demonstrates how raw Excel healthcare data can be transformed into a complete end-to-end ETL pipeline, star schema data warehouse, and Power BI analytics model—all built using MySQL and SQL-based transformations.

It reflects the real workflow of a data engineer:
importing messy data → designing a schema → building dimensions and facts → loading data → analyzing → visualizing → improving data quality.

🌟 Project Overview

I started this project with a single Excel file containing:

55,000 rows

15 columns

Name, Age, Gender, Blood_Type, Medical_Condition, Date_of_Admission,
Doctor, Hospital, Insurance_Provider, Billing_Amount, Room_Number,
Admission_Type, Discharge_Date, Medication, Test_Results


My goal was to convert this raw file into a clean data warehouse using the Star Schema, run SQL analysis, and visualize insights in Power BI.

🧱 1. Raw Data Import (Staging Layer)
First Attempt (Import Wizard)

I used MySQL Workbench’s import wizard, but it was too slow:
30 minutes = only ~1,000 rows → I cancelled the process.

Final Method (LOAD DATA INFILE)

With help from ChatGPT & Gemini, I switched to LOAD DATA INFILE.
I copied my dataset into the MySQL directory and executed the script (SQL/2_infile.sql).

This imported all 55,000+ rows in seconds, successfully populating:

Stage_RawData

🏗️ 2. Star Schema Design

From the 15 variables, I identified:

Dimensions

Dim_Patient

Dim_Doctor

Dim_Hospital

Dim_Medication

(Queries in SQL/3_dimensions.sql)

Facts

Fact_Admission

Fact_Billing

(Queries in SQL/4_fact.sql)

The schema includes proper Primary Keys, Foreign Keys, and relationships, documented in the project diagrams.

🔄 3. ETL Process (Loading Dimensions & Facts)

After the staging table was ready, I wrote custom SQL scripts that:

Extracted data from Stage_RawData

Inserted cleaned values into Dimension tables

Connected keys into Fact tables

Ensured consistency and normalization

These queries are located in:

SQL/5_insert_queries.sql

🔍 4. SQL Analysis

Once the warehouse was filled, I performed analytical SQL queries.

Main analysis queries → SQL/6_main_analysis_queries.sql

50 practice questions (generated using Gemini) → SQL/7_sql_practice_questions.sql

Extra manipulation and exploration queries → SQL/8_data_manipulation.sql

This helped me practice joins, aggregations, conditions, and multi-table analysis.

📊 5. Power BI Visualization

After the database was ready, I connected it to Power BI.

Built charts, KPIs, and breakdowns

Exported screenshots (available in dashboard folders)

But here’s the main discovery:

The data was uniformly distributed.

Every hospital had almost identical values.
Every disease had the same patterns.
Billing was flat.

This showed me something important:

👉 My ETL pipeline worked perfectly — it revealed that the source data itself lacked variation.

🛠️ 6. Data Manipulation for Realism

To create meaningful insights, I wrote manual SQL updates to introduce realistic variation:

Adjusted billing amounts

Changed medical patterns

Added randomization

Altered hospital distributions

Created disease-specific behaviours

Modified admission trends

These transformations are in:

SQL/8_data_manipulation.sql


After running these, the Power BI dashboard changed dramatically into a more realistic model.

🎯 Purpose of This Project

This project demonstrates my skills in:

✔️ Database creation
✔️ Table design and normalization
✔️ SQL-based ETL
✔️ Star schema modeling
✔️ Loading large datasets
✔️ SQL analysis & problem solving
✔️ Data manipulation
✔️ Power BI reporting
✔️ End-to-end project documentation
✔️ GitHub version control

The main goal was learning ETL, pipelines, data warehousing, and how all the pieces connect together.
Visualization was an added bonus.

📁 Project Structure
Healthcare ETL Project/
│
├── DATA/
│   └── healthcare_dataset1.csv
│
├── Dashboard/
│   ├── Before Images/
│   └── After Images/
│
├── SQL Queries/
│   ├── 1.raw data table.sql
│   ├── 2_infile.sql
│   ├── 3_dimensions.sql
│   ├── 4_fact.sql
│   ├── 5_insert_queries.sql
│   ├── 6_main_analysis_queries.sql
│   ├── 7_sql_practice_questions.sql
│   └── 8_data_manipulation.sql
│
├── Star Schema/
│   ├── Logical Diagram.png
│   └── Relationship ER.png
│
└── README.md

🚀 How to Run This Project

Create a MySQL database

Run scripts in order:

1.raw data table.sql
2_infile.sql
3_dimensions.sql
4_fact.sql
5_insert_queries.sql


(Optional) Run manipulation script:

8_data_manipulation.sql


Open Power BI and connect to your MySQL database

Refresh and explore insights

👤 Author

Developed by: Bazigh Ali
For learning, demonstration, and practical data engineering experience.
