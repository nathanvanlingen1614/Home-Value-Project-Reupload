CREATE TEMP TABLE IF NOT EXISTS state_population AS
SELECT state, SUM(total_population) as total_population_2017
FROM home_value_data_population
GROUP BY state;

SELECT * 
FROM state_population;