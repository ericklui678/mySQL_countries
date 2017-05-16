-- 1) Query to get all country names, language, and language percentage that speak Slovene
-- SELECT countries.name, languages.language, languages.percentage
-- FROM countries
-- LEFT JOIN languages
-- ON countries.id = languages.country_id
-- WHERE languages.language = 'Slovene'
-- ORDER BY languages.percentage DESC
    
-- 2) Query to display total number of cities for each country. Return name of country and # of cities
-- SELECT countries.name AS name, COUNT(countries.id) AS cities
-- FROM countries
-- LEFT JOIN cities
-- ON countries.id = cities.country_id
-- GROUP BY countries.id
-- ORDER BY cities DESC
    
-- 3) Query to get all the cities in Mexico with a population of greater than 500,000
-- SELECT cities.name, cities.population
-- FROM cities
-- LEFT JOIN countries
-- ON cities.country_id = countries.id
-- WHERE countries.name = 'Mexico'
-- AND cities.population > 500000
-- ORDER BY cities.population DESC

-- 4) Query to get all languages in each country with percentage greater than 89%
-- SELECT countries.name, languages.language, languages.percentage
-- FROM countries
-- LEFT JOIN languages
-- ON countries.id = languages.country_id
-- WHERE languages.percentage > 89
-- ORDER BY languages.percentage DESC

-- 5) Query to get all the countires with surface area below 501 and population > 100,000
-- SELECT name, surface_area, population
-- FROM countries
-- WHERE surface_area < 501
-- AND population > 100000

-- 6) Query all countires with 'Constitutional Monarchy" gov_form and with capital > 200 and life_exp > 75
-- SELECT name, government_form, capital, life_expectancy
-- FROM countries
-- WHERE government_form = 'Constitutional Monarchy'
-- AND capital > 200
-- AND life_expectancy > 75

-- 7) Query to get all cities of Argentina inside the Beonos Aires district and have pop > 500,000
-- SELECT countries.name, cities.name as city, cities.district, cities.population
-- FROM countries
-- LEFT JOIN cities
-- ON countries.id = cities.country_id
-- WHERE countries.name = 'Argentina'
-- AND cities.district = 'Buenos Aires'
-- AND cities.population > 500000

-- 8) Query to summarize the number of countries in each region. Display name of region and number of countries
-- SELECT countries.region, COUNT(countries.id)
-- FROM countries
-- GROUP BY countries.region
-- ORDER BY COUNT(countries.id) DESC