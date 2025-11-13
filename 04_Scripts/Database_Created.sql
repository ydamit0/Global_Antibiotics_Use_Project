CREATE DATABASE global_antibiotic_use;
USE global_antibiotic_use;
USE global_antibiotic_use;
amr_resistance_rates
-- 1 WHO Antibiotic Consumption Data
CREATE TABLE WHO_Antibiotic_Consumption (
    Region VARCHAR(100),
    Country_code VARCHAR(3),
    Country VARCHAR(200),
    Year INT,
    DDD_per_1000_per_day DOUBLE,
    Last_Updated DATE
);

-- 2️ Global Antibiotic Consumption Trends
CREATE TABLE Global_Consumption_Trends (
    Country VARCHAR(255),
    Year INT,
    DDD_per_1000_per_day DOUBLE
    );

-- 3️ AMR Resistance Rates (2000–2023)
CREATE TABLE AMR_Resistance_Rates (
    Region VARCHAR(255),
    Country VARCHAR(255),
    Pathogen VARCHAR(255),
    Primary_Antibiotic_Class VARCHAR(255),
    Deaths_Associated_with_AMR VARCHAR(255),
    Year INT,
    Resistance_Prevalence_Percent DOUBLE
);

-- 4️ GDP Per Capita
CREATE TABLE gdp_per_capita (
    Country VARCHAR(255),
    Country_code VARCHAR(3),
    Year INT,
    GDP_per_capita_usd DOUBLE
);

-- 5️ Health Expenditure (% GDP)
CREATE TABLE health_expenditure (
    Country VARCHAR(255),
    Country_Code VARCHAR(255),
    Year INT,
    Health_Expenditure_Percent_GDP DOUBLE
);

-- 6️ World Population by Country
CREATE TABLE world_population (
    Country VARCHAR(255),
    Country_code VARCHAR(10),
    Year INT,
    Population BIGINT
);

