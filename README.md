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
The dataset simulates best seller food, total food sold per day, total sales per day.
## Key Characteristics
Sales per Day: $47 - $501.50

Food sold per pieces a Day: 7 - 67

Best Seller: Chicken
## Column Definition
| **Column Name** | **Data Type** | **Description** |
| --- | --- | --- |
| OrderID | INT | Unique Order Identifier |
| SalesDate | DATE | The day the customer bought foods |
| CustomerID | VARCHAR | Customer unique ID number |
| FoodItem | VARCHAR | Food name |
| Category | VARCHAR | Type of food style |
| Quantity | INT | Number of foods ordered |
| UnitPrice | NUMERIC | Food price |
| TotalSales | NUMERIC | Total sales per day |
| PaymentMethod | VARCHAR | Mode of payment cash or card |
| City | VARCHAR | Customers address |

## Tools
Microsoft Excel, PostgreSQL database, Power BI
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

<img width="199" height="196" alt="category" src="https://github.com/user-attachments/assets/77cbed4b-73ea-49c9-a284-ea6cb7875104" />

#### 2. Sales per Day:
**SELECT Sales_Date, SUM(Total_Sales) AS Sales_per_Day FROM Food_Sales GROUP BY Sales_Date ORDER BY Sales_Date ASC;**

<img width="242" height="287" alt="salesperday" src="https://github.com/user-attachments/assets/deb06290-480b-4a30-9a09-fed76d752f63" />

#### 3. Sold per Day:
**SELECT Sales_Date, SUM(Quantity) AS Food_Sold_per_Day FROM Food_Sales GROUP BY Sales_Date ORDER BY Sales_Date ASC;**

<img width="266" height="287" alt="soldperday" src="https://github.com/user-attachments/assets/8b4dc4a2-77b4-4aee-a22f-ca7c9d109e98" />

#### 4. Highest Quantity Sold in One Day:
**SELECT MAX(max_sold) AS Pieces_Sold FROM (SELECT SUM(Quantity) AS max_sold FROM Food_Sales GROUP BY Sales_Date );**

<img width="142" height="291" alt="maxsold" src="https://github.com/user-attachments/assets/0ff83128-30ca-4df8-8a2a-d624c890ec22" />

#### 5. Best Seller:
**SELECT Food_Item, COUNT(*) AS Best_Seller FROM Food_Sales GROUP BY Food_Item;**

<img width="283" height="356" alt="best-seller" src="https://github.com/user-attachments/assets/01d09ad0-1bf3-4936-a893-31335f1bc10e" />



