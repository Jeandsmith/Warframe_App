

SELECT *
FROM relics
JOIN 
relic_stats
ON relics.relic_name = relic_stats.relic_name;

SELECT *
FROM relics NATURAL JOIN relic_stats;