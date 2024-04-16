

--Lets Start with the basic demographics of the dataset.

--1. Count of total number of businesses, categories, and countries listed in the dataset.

SELECT 
  (SELECT COUNT(*) FROM businesses) AS total_businesses,
  (SELECT COUNT(*) FROM categories) AS total_categories,
  (SELECT COUNT(*) FROM countries) AS total_countries;

--2. List of all unique business categories in the dataset.

SELECT DISTINCT category
FROM categories
ORDER BY category;

--Moving to analyze the historical depth, establishing the range of years covered by the dataset.

--3. Finding  the oldest and newest founding years recorded in the businesses table.

SELECT 
  MIN(year_founded) AS oldest_business_year,
  MAX(year_founded) AS newest_business_year
FROM businesses;

--4. Counting and listing  businesses that were founded before the year 1000.

SELECT COUNT(year_founded) AS Total_Founded_Before_1000, year_founded, business
FROM businesses 
WHERE year_founded < 1000 
GROUP BY year_founded, business
ORDER BY year_founded;

--5. Finding the Top 10 Oldest Businesses.

SELECT business, year_founded
FROM businesses
ORDER BY year_founded
LIMIT 10;

--6. Looking into the distribution of Business Founding Years. 
--Analyze how business founding years are spread across the dataset.

SELECT year_founded, COUNT(*) AS count
FROM businesses
GROUP BY year_founded
ORDER BY year_founded;

--Next lets analyze the geographical distribution of businesses.

--7. Count of Businesses per Country. 

SELECT country, COUNT(*) AS business_count
FROM businesses
JOIN countries ON businesses.country_code = countries.country_code
GROUP BY country
ORDER BY business_count DESC;

--8. Count of businesses per continent.

SELECT co.continent, COUNT(b.business) AS count
FROM businesses AS b
JOIN countries AS co 
ON b.country_code = co.country_code
GROUP BY co.continent
ORDER BY count DESC;

--9. Count of business per category.

SELECT c.category, COUNT(b.category_code) AS number_of_businesses
FROM businesses AS b
JOIN categories AS c 
ON b.category_code = c.category_code
GROUP BY c.category
ORDER BY number_of_businesses DESC;

--Time to delve deeper and find the oldest entities to highlight historical endurance.

--10. Find the oldest business on each continent.

SELECT co.continent, MIN(b.year_founded) AS oldest_founding_year
FROM businesses AS b
JOIN countries AS co 
ON b.country_code = co.country_code
GROUP BY co.continent
ORDER BY oldest_founding_year;

--11. Identify the oldest business in each country.

SELECT country, MIN(year_founded) AS oldest_year
FROM businesses
JOIN countries ON businesses.country_code = countries.country_code
GROUP BY country
ORDER BY oldest_year;

--12. Find oldest Business in Each Category.

SELECT category, MIN(year_founded) AS oldest_year
FROM businesses
JOIN categories ON businesses.category_code = categories.category_code
GROUP BY category
ORDER BY oldest_year;

-- Lets begin to investigate business longevity and category trends. 

--13. Average lifespan of businesses within each continent. 
--This can provide insights into which types of businesses tend to be more enduring.

SELECT category, ROUND(AVG(2024 - year_founded), 0) AS average_lifespan
FROM businesses
JOIN categories ON businesses.category_code = categories.category_code
GROUP BY category
ORDER BY average_lifespan DESC;

--14. Business Longevity by Continent. This query assesses the average and median age of businesses on 
--each continent, providing insights into regional differences in business endurance.

SELECT continent, ROUND(AVG(2024 - year_founded),0) AS average_age, PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY year_founded) AS median_age
FROM businesses
JOIN countries ON businesses.country_code = countries.country_code
GROUP BY continent
ORDER BY average_age DESC;

--Analyze category dynamics and economic indicators. 

--15. Changes in Business Categories Over Time. Investigate how the types of businesses (categories) 
--have changed over time, possibly indicating economic and technological shifts.

SELECT century, category, COUNT(*) AS count
FROM (
    SELECT category, (year_founded / 100 + 1) * 100 AS century
    FROM businesses
    JOIN categories ON businesses.category_code = categories.category_code
) AS centuries
GROUP BY century, category
ORDER BY century, count DESC;

--16. Most Common Business Types in the Oldest Quartile. Look at the most common types of businesses 
--among the oldest quartile to see if certain industries are more likely to have long-standing 
--enterprises.

SELECT category, COUNT(*) AS count
FROM businesses
JOIN categories ON businesses.category_code = categories.category_code
WHERE year_founded <= (SELECT PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY year_founded) FROM businesses)
GROUP BY category
ORDER BY count DESC;

--17. Continental Distribution of Business Categories: See which business categories are most prevalent on 
--each continent, highlighting regional economic specialties or cultural preferences.

SELECT continent, category, COUNT(*) AS count
FROM businesses
JOIN countries ON businesses.country_code = countries.country_code
JOIN categories ON businesses.category_code = categories.category_code
GROUP BY continent, category
ORDER BY continent, count DESC;
