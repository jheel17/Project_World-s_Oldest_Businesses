# Indroduction: 

 In the ever-evolving realm of commerce, the ability of a business to adapt and survive through centuries is a testament to its resilience and strategic acumen 🕰️. This project dives into a dataset provided by BusinessFinancing.co.uk, spotlighting the oldest companies still operating in almost every country. By studying these enduring enterprises, we aim to uncover the secrets of their longevity and the myriad factors that contribute to their survival—ranging from innovation and business practices to market dynamics. Such insights not only enlighten current businesses aiming for sustainability but also offer a rich historical and cultural perspective on economic resilience 📊🌍.

# Dataset:

The dataset utilized in this project is structured into three main tables, providing a comprehensive overview of the oldest surviving businesses around the world.


**Businesses Table**

| Column        | Type    | Description                                   |
|---------------|---------|-----------------------------------------------|
| business      | varchar | Name of the business.                         |
| year_founded  | int     | Year the business was founded.                |
| category_code | varchar | Code for the category of the business.        |
| country_code  | char    | ISO 3166-1 3-letter country code.             |



**Countries Table**

| Column       | Type    | Description                                   |
|--------------|---------|-----------------------------------------------|
| country_code | varchar | ISO 3166-1 3-letter country code.             |
| country      | varchar | Name of the country.                          |
| continent    | varchar | Name of the continent that the country exists in.|


**Categories Table**

| Column         | Type    | Description                       |
|----------------|---------|-----------------------------------|
| category_code  | varchar | Code for the category of the business. |
| category       | varchar | Description of the business category.  |


# Project Objective: 

The overarching goal of this project is to explore and understand the longevity and distribution of businesses across the globe 🌍. By analyzing the oldest companies still operating in almost every country, the project aims to unearth patterns and trends 📊 that contribute to business sustainability and endurance. This involves examining a range of factors from the year of establishment 📅 and business category 🏷️ to geographical 🌐 and continental distributions 🌏. Through this analysis, the project seeks to offer insights into the historical 🏛️, economic 💹, and cultural factors that influence business longevity, providing valuable lessons for current and future businesses aiming for sustained success 🚀.

# Key Questions Answered Through the Analysis:

1. **Basic Demographics and Historical Depth:** 
- What is the total count of businesses, categories, and countries listed? 
- What are the oldest and newest founding years of businesses?
   
2. **Business Categorization:**
- What are the various types of business categories present in the dataset?

3. **Temporal Distribution:** 
- How is the founding year of businesses distributed through history?

4. **Geographical Analysis:**
- How are businesses distributed across different countries and continents?

5. **Historical Endurance:**
- Which are the oldest businesses on each continent and in each country? 
- What are the oldest businesses in each category?

6. **Business Longevity and Trends:**
- What is the average lifespan of businesses within each category? 
- How does the average and median age of businesses vary across continents?

7. **Economic and Category Dynamics Over Time:**
- How have business types evolved over the centuries? 
- What are the most common business types in the oldest quartile of businesses? 
- Which business categories are most prevalent on each continent?

By addressing these questions, the project provides a detailed look at the characteristics of businesses that have not only survived but thrived through significant historical events and market changes. 

# Analysis:

The queries provided systematically explore the dataset of the world's oldest businesses. Here's a breakdown of the specific questions each query addresses. 



### 1. What is the total count of businesses, categories, and countries listed in the dataset?


 This query gives an overview of the dataset's scope, helping to set the stage for deeper analysis.

```sql
SELECT 
  (SELECT COUNT(*) FROM businesses) AS total_businesses,
  (SELECT COUNT(*) FROM categories) AS total_categories,
  (SELECT COUNT(*) FROM countries) AS total_countries;
```

![query1](Project_Oldest_Businesses/assets/Q1.PNG)

*The dataset reveals a remarkable historical tapestry with 163 businesses enduring across 19 categories and 195 countries, showcasing the global and diverse nature of commercial resilience.*


### 2. What are the unique business categories included in the dataset?

This query identifies the diversity of business types captured in the historical records.

```sql
SELECT DISTINCT category
FROM categories
ORDER BY category;
```
![query2](Project_Oldest_Businesses/assets/Q2.PNG)

*The dataset spans a wide array of industries, from Agriculture to Telecommunications, highlighting a rich diversity in the types of businesses that have weathered the centuries, including sectors like "Cafés, Restaurants & Bars" that have long been central to social life.*

### 3. What are the oldest and newest founding years recorded among all businesses?

Understanding the temporal range of the dataset highlights historical depth and the evolution of business enterprises.

```sql
SELECT 
  MIN(year_founded) AS oldest_business_year,
  MAX(year_founded) AS newest_business_year
FROM businesses;
```
![query3](Project_Oldest_Businesses/assets/Q3.PNG)

*The dataset captures an extraordinary span of history, with the oldest business dating back to 578 AD and the newest to 1999, showcasing over a millennium of commercial endurance and evolution.*


### 4. How many businesses were founded before the year 1000, and what are their names and founding years?

This query indicates the earliest economic activities that have persisted into the modern era.

```sql
SELECT COUNT(year_founded) AS Total_Founded_Before_1000, year_founded, business
FROM businesses 
WHERE year_founded < 1000 
GROUP BY year_founded, business
ORDER BY year_founded;
```
![query4](Project_Oldest_Businesses/assets/Q4.PNG)

*The table shows a fascinating glimpse into the oldest businesses that have survived for more than a millennium, with a variety of enterprises including a construction company, restaurants, a winery, a mint, and a bar, each having its unique legacy dating as far back as 578 AD*


### 5. How many businesses are there in each country?
 This query shows the geographical spread and concentration of historical businesses, which can be indicative of historical commercial hubs or economic activity.

```sql
 SELECT country, COUNT(*) AS business_count
FROM businesses
JOIN countries ON businesses.country_code = countries.country_code
GROUP BY country
ORDER BY business_count DESC;
```
![query](Project_Oldest_Businesses/assets/Q5.PNG)

*The map visualizes the distribution of the oldest businesses still in operation around the world, with each dot representing at least one business in a country.*

 *It appears that every country has at least one long-standing business, with a notable concentration in Africa & Europe, indicating a rich history of commerce and potentially more favorable conditions for business longevity in that region.*
*
### 6. What is the count of businesses on each continent?
   This query provides a broader view of the distribution of business longevity and historical commercial activity at the continental level.

```sql
SELECT co.continent, COUNT(b.business) AS count
FROM businesses AS b
JOIN countries AS co 
ON b.country_code = co.country_code
GROUP BY co.continent
ORDER BY count DESC;
```

![query](Project_Oldest_Businesses/assets/Q6.PNG)

*This bar graph depicts the number of longstanding businesses by continent, highlighting Africa as the leader with the highest count, followed by Europe.*

### 7. How many businesses are there in each category?
 This query reveals which types of businesses are more common, suggesting which industries have been historically durable or popular.

```sql
SELECT c.category, COUNT(b.category_code) AS number_of_businesses
FROM businesses AS b
JOIN categories AS c 
ON b.category_code = c.category_code
GROUP BY c.category
ORDER BY number_of_businesses DESC;
```

![query](Project_Oldest_Businesses/assets/Q7.PNG)

*The bar chart shows the distribution of the number of businesses across various categories.*

*Banking & Finance tops the chart, suggesting it's the sector with the highest number of enduring businesses. This could reflect the fundamental role of financial services in economic sustainability and growth over centuries.*

*In contrast, sectors like Medical and Construction have fewer representatives among the oldest companies, possibly due to the evolution of technologies and practices in these areas.*

### 8. Which is the oldest business still operating on each continent?
 This query identifies the most enduring business on each continent, underscoring regional historical and economic resilience.

```sql
SELECT b.business, co.continent, b.year_founded AS oldest_founding_year
FROM businesses AS b
INNER JOIN countries AS co 
ON b.country_code = co.country_code
INNER JOIN 
    (SELECT continent, MIN(year_founded) AS oldest_year FROM businesses AS b 
    JOIN countries AS co ON b.country_code = co.country_code
    GROUP BY continent) AS subq ON co.continent = subq.continent AND b.year_founded = subq.oldest_year
ORDER BY oldest_founding_year;
```

![query](Project_Oldest_Businesses/assets/Q8.PNG)

*The table showcases the oldest businesses still in operation on each continent far back as 578 AD for Kongō Gumi in Asia to 1809 for Australia Post in Oceania.*

### 9. What is the oldest business in each country?
 This query provides a national perspective on business endurance, highlighting the oldest company still in operation in each country.

```sql
SELECT country, MIN(year_founded) AS oldest_year
FROM businesses
JOIN countries ON businesses.country_code = countries.country_code
GROUP BY country
ORDER BY oldest_year;
```

![query](Project_Oldest_Businesses/assets/Q9.PNG)

*The map provides a depiction of the oldest businesses in each country, with years of foundation prominently displayed.*

*This variation showcases not only the historical richness of global commerce but also the unique economic evolutions that various countries have experienced.*

### 10. Which is the oldest business within each category?
 This query points out the business with the longest history in each specific sector, providing insight into the sectors with long historical roots.

```sql
SELECT category, MIN(year_founded) AS oldest_year
FROM businesses
JOIN categories ON businesses.category_code = categories.category_code
GROUP BY category
ORDER BY oldest_year;
```
![query](Project_Oldest_Businesses/assets/Q10.PNG)

*The table presents the oldest businesses within various categories, revealing that sectors like Construction and Hospitality (Cafés, Restaurants & Bars) have the deepest historical roots, with the oldest businesses dating back to 578 and 803 respectively.*

*This underscores the enduring nature of industries that fulfill fundamental human needs like shelter and food.*

*On the other end, sectors such as Energy and Media have the youngest old-timers, suggesting they may have emerged alongside industrial and technological advancements.*

### 11. What is the average lifespan of businesses within each category?
 This query estimates the longevity of businesses by category, giving insights into which types of businesses tend to last the longest.

```sql
 SELECT category, ROUND(AVG(2024 - year_founded), 0) AS average_lifespan
FROM businesses
JOIN categories ON businesses.category_code = categories.category_code
GROUP BY category
ORDER BY average_lifespan DESC;
```

![query](Project_Oldest_Businesses/assets/Q11.PNG)

*The bar chart visualizes the average lifespan of businesses across different categories.*

*It highlights that construction businesses have the longest average lifespan, significantly outlasting others.*

*This suggests that construction may be a sector where businesses are able to sustain operations over long periods, possibly due to the perennial need for infrastructure.*

 *On the contrary, media and energy businesses appear to have the shortest average lifespans, which could indicate these sectors are more susceptible to technological changes or market fluctuations.*

### 12. What is the average age of businesses on each continent?
 This query analyzes how business longevity varies by continent, potentially reflecting regional economic stability and historical conditions.

```sql
SELECT continent, ROUND(AVG(2024 - year_founded),0) AS average_age
FROM businesses
JOIN countries ON businesses.country_code = countries.country_code
GROUP BY continent
ORDER BY average_age DESC;
```

![query](Project_Oldest_Businesses/assets/Q12.PNG)

*The bar graph illustrates a striking disparity in the average age of businesses across continents.*

*Europe towers over other regions with businesses that have been operational for an average of over 500 years, pointing to a resilient commercial history where companies have thrived through centuries of economic and political changes.*

*In stark contrast, Africa's average business age is notably lower, which may reflect a more recent flourishing of commerce, possibly influenced by later economic development and a younger business ecosystem.*

*This contrast highlights how deeply the history and stability of a region can impact the longevity of its commerce sector.*

 
### 13. How have business categories evolved over time?
  This query investigates changes in business categories across centuries, indicating shifts in economic focus, technological advancement, or societal needs.

**Medieval: From 500 AD up until 1499.**

- This spans the entirety of the Middle Ages, a time following the fall of the Western Roman Empire, through the Dark Ages, and up to the beginning of the Renaissance.

**Early Modern: From 1500 AD up until 1899.** 

- This period covers the Renaissance, the Age of Discovery, the Enlightenment, and leads up to the industrial revolution.

**Modern: From 1900 AD up until 1999.** 

- This includes the 20th century, a time of great technological advancement, world wars, and shifting geopolitical landscapes.

**Contemporary: From the year 2000 AD onwards.** 

- This period is characterized by the digital age, advanced technology, and globalization.

```sql
SELECT 
  CASE
    WHEN century >= 2000 THEN 'Contemporary'
    WHEN century >= 1900 THEN 'Modern'
    WHEN century >= 1500 THEN 'Early Modern'
    WHEN century >= 500 THEN 'Medieval'
    ELSE 'Ancient'
  END AS time_period,
  category,
  COUNT(*) AS count
FROM (
    SELECT category, (year_founded / 100 + 1) * 100 AS century
    FROM businesses
    JOIN categories ON businesses.category_code = categories.category_code
) AS centuries
GROUP BY time_period, category
ORDER BY time_period, count DESC;
```

![query](Project_Oldest_Businesses/assets/Q13.PNG)

*The stacked bar graph illustrates the evolution of business categories over different historical periods*

*Key Insight:*

- *As early as the Medieval period, construction played a crucial role, laying the infrastructure for burgeoning societies.*

- *During the Early Modern era, the prominence of manufacturing and distilleries suggests a move towards organized industrial activity and social culture.*

- *From Medieval times through the Early Modern era, the hospitality sector consistently served as a social cornerstone.*

- *The Modern period saw a flourishing of economic diversity, with the emergence of tourism, medical services, and financial institutions, showcasing the complexification of societal needs.*

- *Manufacturing remained pivotal into the Modern age, accompanied by the rise of postal services, which facilitated the expanding networks of the time.*

- *A surge in diverse business categories in the Late Modern period illustrates the expanding marketplace and the rapid pace of innovation.*

- *In the Contemporary period, dominance by banking and finance, alongside aviation and transport sectors, marks the current globalized and interconnected economic fabric, with media and energy sectors echoing the digital and sustainability revolutions.*

*Overall, these trends depict an evolution from fundamental industries like construction to a sophisticated, interconnected global economy characterized by finance, technology, and service industries, mirroring the progress in societal development and technological innovation.*


### 14. What are the most prevalent business categories on each continent?
 This query shows how business types vary by continent, highlighting regional differences in economic activities and possibly cultural preferences.

```sql
SELECT continent, category, COUNT(*) AS count
FROM businesses
JOIN countries ON businesses.country_code = countries.country_code
JOIN categories ON businesses.category_code = categories.category_code
GROUP BY continent, category
ORDER BY continent, count DESC;
```

![query](Project_Oldest_Businesses/assets/Q14.PNG)

- *The stacked bar graph shows the distribution of business categories by continent, offering several insights:*

- *It reveals that Banking & Finance is a leading business category, particularly dominant in Africa and Asia, which reflects the continent's robust economic growth and significant global financial influence.*

- *Meanwhile, Europe displays a diverse economic profile with strong showings in categories like Manufacturing, Distillers, Vintners,& Breweries .*

- *Notably, Agriculture, a sector traditionally associated with primary economies, still has a presence across most of the continents, underscoring its fundamental and universal importance.*

- *Each continent exhibits a unique economic fingerprint, with varied leading industries that suggest differing regional resources, development strategies, and cultural preferences.*

# Key Insights from the Analysis:

- Historical Breadth: The dataset reveals the incredible historical span of businesses, dating from as early as 578 AD to the modern era, demonstrating the vast temporal landscape across which businesses have operated and endured.

- Diverse Economic Activities: A rich diversity of industries is present, with some like Banking & Finance and Agriculture having a timeless and universal significance.

- Geographical Disparities: The spread of businesses across countries and continents reveals patterns of historical economic hubs, with Africa leading in the number of businesses, suggesting a deep-rooted commercial tradition.

- Enduring Hospitality: The consistent presence of Cafés, Restaurants & Bars over the centuries signifies the lasting nature of the hospitality industry.

- Economic Evolution: A trajectory from basic necessities (construction and food) to more complex and service-oriented industries (banking, aviation, energy) parallels technological and societal advancements.

# Skills Learned:

Data Analysis: Gained proficiency in SQL, PostgreSQL for querying large datasets and extracting meaningful information.

Data Visualization: Learned to effectively use Tableau for creating insightful visualizations that communicate complex data in an accessible manner.

Critical Thinking: Enhanced ability to draw connections between various data points and historical events to craft compelling narratives.

Technical Writing: Improved technical writing skills to summarize findings and present data-driven insights clearly and concisely.

# Conclusion:

This project took me on a time-traveling adventure through the history of businesses that have stood the test of time 🕰️. I looked at all kinds of shops and services that have been around for hundreds of years, learning how they've managed to stick around for so long 🌟. From the old-school builders to the taverns and inns where people have always loved to gather 🍻, these businesses have shown us they know how to change with the times and keep customers coming back. It's been an eye-opener to see how the things we buy and the services we use have changed through history. This trip through time gave me a deeper look into how businesses have keept going strong and what might come next in the world of commerce 🛍️🌍.






