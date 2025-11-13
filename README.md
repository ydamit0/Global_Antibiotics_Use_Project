🌍 Global Antibiotic Use & AMR Analysis (2000–2023)

This project analyzes global antibiotic consumption, antimicrobial resistance (AMR), and their relationship with economic and health indicators.
It includes data cleaning, MySQL database creation, and Tableau dashboards for clear, interactive insights.

📌 Project Summary

This project combines multiple global datasets (WHO, World Bank, etc.) to understand:
How antibiotic consumption varies across countries and years
Which regions and pathogens show the highest AMR levels
How GDP and health expenditure relate to antibiotic use and AMR
Key high-risk countries and trends from 2000–2023
All datasets were cleaned, standardized, joined, and transformed into a relational database using MySQL.

🗂️ Project Structure
📁 data/                → cleaned datasets (CSV/Excel)
📁 sql/                 → SQL scripts for cleaning, joins, and analysis
📁 documentation/       → ERD diagram, database export, import guide
📁 dashboards/          → Tableau dashboards (TWBX)
README.md               → project documentation

🛠️ Tools Used

MySQL & MySQL Workbench
Tableau Public
Excel
GitHub

🧹 Data Cleaning (SQL)

Key steps performed:
Removed duplicates
Normalized country and region names
Handled missing values
Converted date formats
fixed incorrect scales (e.g., health expenditure >100%)
Made all tables joinable via (Country, Year)
Added primary keys, indexes, and cleaned numeric fields
All SQL scripts are available in the /sql folder.

🗄️ Relational Database

A full database named global_antibiotic_use was created with cleaned tables:
WHO Antibiotic Consumption
AMR Resistance Rates
GDP Per Capita
Health Expenditure % GDP
Global Consumption Trends
World Population

A complete .sql export is available in /documentation.

📊 Tableau Dashboards
1️⃣ Global Antibiotic Consumption Overview

Shows:

Global map of antibiotic use

Yearly trend lines

Top 10 consuming countries

Regional share donut chart

2️⃣ AMR Resistance Trends Dashboard

Shows:

AMR map

Resistance trends over years

Pathogen × antibiotic-class heatmap

Top resistant countries

3️⃣ Economic & Health Correlation Dashboard

Shows:

GDP vs antibiotic use (scatter plot)

Health spending vs resistance (dual-axis line)

Regional comparison of spending & AMR

KPI summary

💡 Key Insights

Antibiotic consumption is increasing globally

AMR rates are rising in several countries

High GDP does not always mean lower AMR

Some regions with high health expenditure still show elevated resistance

Strong variation between pathogens and antibiotic classes

📥 Importing the MySQL Database

Use:

mysql -u root -p
CREATE DATABASE global_antibiotic_use;
USE global_antibiotic_use;
SOURCE documentation/global_antibiotic_use.sql;



👨‍💻 Author

Amit Yadav
Data Analyst | SQL | Tableau | Analytics
🔗 LinkedIn: https://www.linkedin.com/in/amit-yadav866/
🔗 GitHub: https://github.com/ydamit0/
