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
#### 1. Category:
**SELECT DISTINCT(Category) FROM Food_Sales;**

<img width="175" height="178" alt="food-categories" src="https://github.com/user-attachments/assets/3acb688b-3c18-434a-b200-ac520b10b94c" />


#### 2. Sales per Day:
**SELECT SalesDate, SUM(TotalSales) AS Sales_per_Day FROM Food_Sales GROUP BY SalesDate ORDER BY SalesDate ASC;**

<img width="194" height="348" alt="sales-per-day" src="https://github.com/user-attachments/assets/43fb6a25-8416-4aeb-9196-befee262417b" />


#### 3. Total food sold pieces per Day:
**SELECT SalesDate, SUM(Quantity) AS Food_Sold_per_Day FROM Food_Sales GROUP BY SalesDate ORDER BY SalesDate ASC;**

<img width="239" height="353" alt="total-food-pieces-per-day" src="https://github.com/user-attachments/assets/7ed291a0-655e-48b5-b378-4ac48253c0bb" />


#### 4. Highest Sold in One Day:
**SELECT TOP 1 DAY(SalesDate) AS Day_Ordered, SUM(UnitPrice) AS Sales_per_Day FROM food_sales GROUP BY DAY(SalesDate) ORDER BY SUM(UnitPrice) DESC;**

<img width="215" height="68" alt="highest-sold-per-day" src="https://github.com/user-attachments/assets/65660e00-a556-429b-89e9-57d974ccac97" />


#### 5. Lowest Sold in One Day:
**SELECT TOP 1 DAY(SalesDate) AS Day_Ordered, SUM(UnitPrice) AS Sales_per_Day FROM food_sales GROUP BY DAY(SalesDate) ORDER BY SUM(UnitPrice) ASC;**

<img width="211" height="68" alt="lowest-sold-per-day" src="https://github.com/user-attachments/assets/94f1f56f-fd98-4911-a9e4-162785252dd4" />


## 6. Total food sold pieces per Month:
**SELECT MONTH(SalesDate) AS Sales_per_Day, SUM(Quantity) AS Quantities FROM food_sales GROUP BY MONTH(SalesDate) ORDER BY SUM(Quantity) DESC;**

<img width="203" height="123" alt="total-food-sold-pieces-per-month" src="https://github.com/user-attachments/assets/721b6da1-786a-4bdf-bf23-647be395eb27" />


## 7. Best Seller:
**SELECT FoodItem, COUNT(*) AS BestSeller FROM Food_Sales GROUP BY FoodItem ORDER BY BestSeller DESC;**

<img width="191" height="242" alt="best-seller" src="https://github.com/user-attachments/assets/fd23b28c-3e82-47d3-ac4e-4cb3c2d83d64" />


## 8. Top Customers from Country:
**SELECT City, COUNT(*) AS Customers_City FROM Food_Sales GROUP BY City ORDER BY Customers_City DESC;**

<img width="217" height="145" alt="top-custoers-from-country" src="https://github.com/user-attachments/assets/de055705-b5fa-4d7a-9b3a-34e82f3352bf" />


## 9. Cities:
**SELECT DISTINCT(City) FROM food_sales;**

<img width="154" height="145" alt="cities" src="https://github.com/user-attachments/assets/e3ee13e7-ea76-4730-b649-47a86e604a33" />


## 10. Payment Methods:
**SELECT DISTINCT(PaymentMethod) FROM food_sales;**

<img width="157" height="104" alt="payment-methods" src="https://github.com/user-attachments/assets/5d62739c-ae79-47b7-b75b-ab145ef084b4" />
