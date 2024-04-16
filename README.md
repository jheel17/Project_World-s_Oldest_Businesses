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