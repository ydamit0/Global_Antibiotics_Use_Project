USE global_antibiotic_use;

SELECT * FROM world_population;


-- 1️ WHO ANTIBIOTIC CONSUMPTION DATA CLEANING

UPDATE who_antibiotic_consumption
SET 
    Region = TRIM(UPPER(Region)),
    Country = TRIM(UPPER(Country)),
    Country_code = TRIM(UPPER(Country_code));

-- Removing missing or invalid DDD values

DELETE FROM who_antibiotic_consumption
WHERE DDD_per_1000_per_day IS NULL OR DDD_per_1000_per_day < 0;


-- 2️ GLOBAL ANTIBIOTIC CONSUMPTION TRENDS CLEANING


UPDATE global_consumption_trends
SET 
    Country = TRIM(UPPER(Country));

DELETE FROM global_consumption_trends
WHERE DDD_per_1000_per_day IS NULL OR DDD_per_1000_per_day < 0;



-- 3️ AMR RESISTANCE RATES CLEANING

UPDATE amr_resistance_rates
SET 
    Region = TRIM(UPPER(Region)),
    Country = TRIM(UPPER(Country)),
    Pathogen = TRIM(UPPER(Pathogen)),
    Primary_Antibiotic_Class = TRIM(UPPER(Primary_Antibiotic_Class));

DELETE FROM amr_resistance_rates
WHERE Resistance_Prevalence_Percent IS NULL
   OR Resistance_Prevalence_Percent < 0
   OR Resistance_Prevalence_Percent > 100;


-- 4️ GDP PER CAPITA CLEANING

UPDATE gdp_per_capita
SET 
    Country = TRIM(UPPER(Country)),
    Country_code = TRIM(UPPER(Country_code));

DELETE FROM gdp_per_capita
WHERE GDP_per_capita_usd IS NULL OR GDP_per_capita_usd <= 0;

-- 5️ HEALTH EXPENDITURE (% GDP)

UPDATE health_expenditure
SET 
    Country = TRIM(UPPER(Country)),
    Country_Code = TRIM(UPPER(Country_Code));

-- Scale down by 100 if value > 100
UPDATE health_expenditure
SET Health_Expenditure_Percent_GDP = Health_Expenditure_Percent_GDP / 100
WHERE Health_Expenditure_Percent_GDP > 100;

UPDATE health_expenditure
SET Health_Expenditure_Percent_GDP = ROUND(Health_Expenditure_Percent_GDP, 2);

DELETE FROM health_expenditure
WHERE Health_Expenditure_Percent_GDP IS NULL
   OR Health_Expenditure_Percent_GDP < 0
   OR Health_Expenditure_Percent_GDP > 100;

-- 6️ WORLD POPULATION CLEANING

UPDATE world_population
SET 
    Country = TRIM(UPPER(Country)),
    Country_code = TRIM(UPPER(Country_code));

DELETE FROM world_population
WHERE Population IS NULL OR Population <= 0;