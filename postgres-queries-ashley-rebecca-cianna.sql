-- What is the population of the US? (HINT: 278357000)
SELECT name, population
FROM country 
WHERE name = 'United States';
-- What is the area of the US? (HINT: 9.36352e+06)
SELECT name, surfacearea
FROM country 
WHERE name = 'United States';
-- Which countries gained their independence before 1963?
SELECT name, region, indepyear
FROM country 
WHERE indepyear IS NOT null AND indepyear < 1963
ORDER BY indepyear DESC
-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, continent, population, lifeexpectancy
FROM country 
WHERE population <3e7 AND lifeexpectancy > 45 AND continent = 'Africa'
-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name country, governmentform
FROM country 
WHERE governmentform LIKE '%Republic%'
-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name country, governmentform, indepyear
FROM country 
WHERE governmentform LIKE '%Republic%' AND indepyear > 1945
-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name country, governmentform, indepyear
FROM country 
WHERE NOT (governmentform LIKE '%Republic%') AND indepyear > 1945
-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT name country, lifeexpectancy
FROM country 
ORDER BY lifeexpectancy ASC
LIMIT 15
-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name country, lifeexpectancy
FROM country 
WHERE lifeexpectancy IS NOT null
ORDER BY lifeexpectancy DESC 
LIMIT 15
-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT name, population, surfacearea, population/surfacearea AS population_density
FROM country 
WHERE population > 0
ORDER BY population_density ASC
LIMIT 5
-- Which countries have the highest population density?(HINT: starts with Macao)
SELECT name, population, surfacearea, population/surfacearea AS population_density
FROM country 
ORDER BY population_density DESC
LIMIT 5 
-- Which is the smallest country by area? (HINT: .4)
SELECT name, surfacearea
FROM country 
ORDER BY surfacearea ASC
LIMIT 1 
-- Which is the smallest country by population? (HINT: 50)?
SELECT name, population
FROM country
WHERE population > 0
ORDER BY population ASC 
LIMIT 1 
-- Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea
FROM country
ORDER BY surfacearea DESC
LIMIT 1 
-- Which is the biggest country by population? (HINT: 1277558000)
SELECT name, population
FROM country
ORDER BY population DESC
LIMIT 1
-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT name, population, headofstate
FROM country
ORDER BY population DESC
LIMIT 1 
-- Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
WITH top_gnp AS (
	SELECT name, population, gnp
	FROM country
	ORDER BY gnp DESC
	LIMIT 10
)
SELECT name, population, gnp
FROM top_gnp
ORDER BY population ASC
LIMIT 1
-- Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
WITH least_pop AS (
	SELECT name, population, surfacearea
	FROM country
	WHERE population > 0
	ORDER BY population ASC
	LIMIT 10
)
SELECT name, population, surfacearea
FROM least_pop
ORDER BY surfacearea DESC
LIMIT 1
-- Which region has the highest average gnp? (HINT: North America)
-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
-- What is the average life expectancy for all continents?
-- What are the most common forms of government? (HINT: use count(*))
-- How many countries are in North America?
-- What is the total population of all continents?

