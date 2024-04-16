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

### 2. What are the unique business categories included in the dataset?
 This query identifies the diversity of business types captured in the historical records.

### 3. What are the oldest and newest founding years recorded among all businesses?
   Understanding the temporal range of the dataset highlights historical depth and the evolution of business enterprises.

### 4. How many businesses were founded before the year 1000, and what are their names and founding years?
 This query indicates the earliest economic activities that have persisted into the modern era.

### 5. Which are the top 10 oldest businesses, and when were they founded?
   This query highlights the most enduring businesses in the dataset, providing a glimpse into remarkable historical longevity.

### 6. How is the distribution of business founding years spread across the dataset?
   This query analyzes the spread and concentration of business establishments over centuries, offering insights into historical economic conditions and business formation rates.

### 7. How many businesses are there in each country?
 This query shows the geographical spread and concentration of historical businesses, which can be indicative of historical commercial hubs or economic activity.

### 8. What is the count of businesses on each continent?
   This query provides a broader view of the distribution of business longevity and historical commercial activity at the continental level.

### 9. How many businesses are there in each category?
 This query reveals which types of businesses are more common, suggesting which industries have been historically durable or popular.

### 10. Which is the oldest business still operating on each continent?
 This query identifies the most enduring business on each continent, underscoring regional historical and economic resilience.

### 11. What is the oldest business in each country?
 This query provides a national perspective on business endurance, highlighting the oldest company still in operation in each country.

### 12. Which is the oldest business within each category?
 This query points out the business with the longest history in each specific sector, providing insight into the sectors with long historical roots.

### 13. What is the average lifespan of businesses within each category?
 This query estimates the longevity of businesses by category, giving insights into which types of businesses tend to last the longest.

### 14. What is the average and median age of businesses on each continent?
 This query analyzes how business longevity varies by continent, potentially reflecting regional economic stability and historical conditions.

### 15. How have business categories evolved over time?
  This query investigates changes in business categories across centuries, indicating shifts in economic focus, technological advancement, or societal needs.

### 16. Which business types are most common among the oldest quartile of businesses?
  This query looks at common business types among the oldest businesses, suggesting which industries have historically demonstrated endurance and stability.

### 17. What are the most prevalent business categories on each continent?
 This query shows how business types vary by continent, highlighting regional differences in economic activities and possibly cultural preferences.

