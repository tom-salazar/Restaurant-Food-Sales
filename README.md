# Restaurant-Food-Sales-Dataset-and-Analysis
## Overview
This synthetic dataset has10 columns, 1,200 rows and 3,574 foods ordered from January 1 – April 1, 2025. The dataset captured customers favorite food ordered, top customers city, sales per day, total food sold per day and best seller.
## Table of Contents
 - [Dataset Description](https://github.com/tom-salazar/Restaurant-Food-Sales-Dataset-and-Analysis/blob/main/README.md#dataset-description)
 - [Key Characteristics](https://github.com/tom-salazar/Restaurant-Food-Sales-Dataset-and-Analysis/blob/main/README.md#key-characteristics)
 - [Column Definition](https://github.com/tom-salazar/Restaurant-Food-Sales-Dataset-and-Analysis/blob/main/README.md#column-definition)
 - [Tools](https://github.com/tom-salazar/Restaurant-Food-Sales-Dataset-and-Analysis/blob/main/README.md#tools)
 - [Power BI Dashboard](https://github.com/tom-salazar/Restaurant-Food-Sales-Dataset-and-Analysis/blob/main/README.md#power-bi-dashboard)
 - [Food Sales SQL Queries](https://github.com/tom-salazar/Restaurant-Food-Sales-Dataset-and-Analysis/blob/main/README.md#food-sales-sql-queries)
## Dataset Description
The dataset simulates best seller food, total food sold per month, total sales per day.
## Key Characteristics
Sales per Day: $47 - $501.50

Food sold pieces per day: 7 - 67

Food sold per pieces a Month: 47 - 1331

Best Seller: Fried Chicken
## Column Definition
| **Column Name** | **Data Type** | **Description** |
| --- | --- | --- |
| OrderID | INT | Unique Order Identifier |
| SalesDate | DATE | The day the customer bought foods |
| CustomerID | VARCHAR | Customer unique ID number |
| FoodItem | VARCHAR | Food name |
| Category | VARCHAR | Type of food style |
| Quantity | INT | Number of foods ordered |
| UnitPrice | DECIMAL | Food price |
| TotalSales | DECIMAL | Total sales per day |
| PaymentMethod | VARCHAR | Mode of payment cash or card |
| City | VARCHAR | Customers address |

## Tools
Microsoft Excel, Microsoft SQL Server Management Studio, Power BI
## Power BI Dashboard
1. Restaurant Food Sales Dashboard
<img width="639" height="598" alt="food-sales-powerbi" src="https://github.com/user-attachments/assets/544b8be4-be97-4f03-ab62-9720ccb9fe3c" />

2. Food Category and Number of Foods Sold per Day
<img width="330" height="227" alt="food-sales-category" src="https://github.com/user-attachments/assets/24784a85-98dc-4a91-a1b1-ae9483862ffe" />

3. Best Seller Food from January 1 - April 1, 2025
<img width="330" height="272" alt="food-sales-best-seller" src="https://github.com/user-attachments/assets/dbc9ce16-86b2-4d80-8988-481a710c13c9" />

## Food Sales SQL Queries
#### 1. Sales per Day:
**SELECT
	SalesDate,
	SUM(TotalSales) AS sales_per_day
FROM food_sales
GROUP BY SalesDate
ORDER BY SalesDate**

<img width="200" height="320" alt="sales_per_day" src="https://github.com/user-attachments/assets/44e70201-2cdc-428d-81a5-d9148e0f4760" />



#### 2. Number of food sold per day:
**SELECT
	SalesDate,
	SUM(Quantity) AS number_of_food_sold_per_day
FROM food_sales
GROUP BY SalesDate
ORDER BY SalesDate**

<img width="279" height="321" alt="number_of_food_sold_per_day" src="https://github.com/user-attachments/assets/0f5b8ecd-180c-4186-8c4c-442e07d1e0ff" />



#### 3. Number of food sold per month:
**SELECT
	DATENAME(MONTH, SalesDate) AS months,
	SUM(Quantity) AS number_of_food_sold_per_month
FROM food_sales
GROUP BY DATENAME(MONTH, SalesDate)**

<img width="278" height="126" alt="number_of_food_sold_per_month" src="https://github.com/user-attachments/assets/41283ed5-b8b2-4964-95e0-e7e425ee6127" />



## 4. Highest sold one day:
**SELECT
	MAX(TotalSales) AS highest_sale_one_day
FROM food_sales**

<img width="197" height="93" alt="highest_sold" src="https://github.com/user-attachments/assets/a82da911-7743-44b1-b7e2-38216ff489eb" />



## 5. Lowest sold one day:
**SELECT
	MIN(TotalSales) AS lowest_sale_one_day
FROM food_sales**

<img width="176" height="90" alt="lowest_sold" src="https://github.com/user-attachments/assets/44ee22e5-fce0-4c0b-a433-3c2ab63b8917" />



## 6. Best Seller:
**SELECT 
	FoodItem,
	COUNT(*) AS best_seller
FROM food_sales
GROUP BY FoodItem
ORDER BY best_seller DESC**

<img width="196" height="244" alt="best_seller" src="https://github.com/user-attachments/assets/0b7fd72a-0520-4382-bbfe-e88d10edd3f2" />



## 7. Top Country Customers:
**SELECT
	City,
	COUNT(*) number_of_customers
FROM food_sales
GROUP BY City
ORDER BY number_of_customers DESC**

<img width="253" height="146" alt="top_country_customers" src="https://github.com/user-attachments/assets/fd3a4d30-c3e9-4e6a-be75-5bf6f12e4286" />



## 8. Food Categories:
**SELECT
	Category
FROM food_sales
GROUP BY Category**

<img width="153" height="164" alt="categories" src="https://github.com/user-attachments/assets/57c5be33-f814-43f8-88d7-780a4a13cf6b" />



## 9. Cities:
**SELECT
	City
FROM food_sales
GROUP BY City**

<img width="157" height="149" alt="cities" src="https://github.com/user-attachments/assets/4fefae75-8bcc-4378-a4ae-2a7e21b2d0d3" />



## 10. Payment Methods:
**SELECT
	PaymentMethod
FROM food_sales
GROUP BY PaymentMethod**

<img width="168" height="112" alt="payment_methods" src="https://github.com/user-attachments/assets/e8acfeb7-a005-433f-b420-88e6fdd23e6c" />
