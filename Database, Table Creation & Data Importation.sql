/* Database Creation */

CREATE DATABASE Retail_Store_Database_Analysis_2;

-- Table Creation 

DROP TABLE IF EXISTS retail_sales;

CREATE TABLE retail_sales(
		transactions_id INT PRIMARY KEY, 
		sale_date DATE, 
		sale_time TIME, 
		customer_id INT,
		gender VARCHAR(15),
		age INT,
		category VARCHAR(15),
		quantity INT,
		price_per_unit FLOAT, 
		cogs FLOAT, 
		total_sale FLOAT
);

SELECT * FROM retail_sales;

SELECT * FROM retail_sales
LIMIT 10;

SELECT COUNT(*) FROM retail_sales;

-- Data Cleaning

-- 1- Long Process

SELECT * FROM retail_sales
WHERE transactions_id IS NULL;

SELECT * FROM retail_sales
WHERE sale_date IS NULL;

SELECT * FROM retail_sales
WHERE sale_time IS NULL;

-- 2- Short Process

SELECT * FROM retail_sales
WHERE
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	gender IS NULL
	OR
	category IS NULL
	OR 
	quantity IS NULL
	OR
	cogs IS NULL
	OR
	total_sale IS NULL;

DELETE FROM retail_sales
WHERE
	transactions_id IS NULL
	OR
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	gender IS NULL
	OR
	category IS NULL
	OR 
	quantity IS NULL
	OR
	cogs IS NULL
	OR
	total_sale IS NULL;

-- Data Exploration

-- 1- How many sales we have?

SELECT COUNT(*) as total_sales FROM retail_sales;

-- 2- How many unique customers we have?

SELECT COUNT(DISTINCT customer_id) as total_sale FROM retail_sales;

SELECT DISTINCT category FROM retail_sales;