SELECT *
FROM percent_change_by_state_1997_to_2017
LEFT JOIN state_population
ON percent_change_by_state_1997_to_2017.state = state_population.state
ORDER BY total_population_2017 DESC;