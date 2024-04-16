-- create table categories

CREATE TABLE categories (
  category_code VARCHAR(5) PRIMARY KEY,
  category VARCHAR(50)
);

-- create table countries

CREATE TABLE countries (
  country_code CHAR(3) PRIMARY KEY,
  country VARCHAR(50),
  continent VARCHAR(20)
);

-- create table businesses

CREATE TABLE businesses (
  business VARCHAR(64) PRIMARY KEY,
  year_founded INT,
  category_code VARCHAR(5),
  country_code CHAR(3)
);