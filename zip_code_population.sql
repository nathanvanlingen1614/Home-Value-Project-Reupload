CREATE TEMP TABLE IF NOT EXISTS zip_code_average_value AS 
SELECT zip_code, city, state, metro, county, date, ROUND(AVG(value))
FROM home_value_data
GROUP BY zip_code;

CREATE TABLE IF NOT EXISTS home_value_data_population AS
SELECT *
FROM zip_code_average_value
LEFT JOIN age_and_sex_survey_2017
ON zip_code_average_value.zip_code = age_and_sex_survey_2017.zip_code;
