
select * from food_sales;

SELECT * FROM Food_Sales ORDER BY SalesDate ASC; -- datas in order 


SELECT DISTINCT(Category) FROM Food_Sales; -- food categories


SELECT SalesDate, SUM(TotalSales) AS Sales_per_Day FROM Food_Sales
GROUP BY SalesDate ORDER BY SalesDate ASC; -- sales per day


SELECT SalesDate, SUM(Quantity) AS Food_Sold_per_Day FROM Food_Sales
GROUP BY SalesDate ORDER BY SalesDate ASC; -- total food sold per day


SELECT TOP 1 DAY(SalesDate) AS Day_Ordered, SUM(UnitPrice) AS Sales_per_Day FROM food_sales
	GROUP BY DAY(SalesDate) ORDER BY SUM(UnitPrice) DESC; -- highest sold in one day


SELECT TOP 1 DAY(SalesDate) AS Day_Ordered, SUM(UnitPrice) AS Sales_per_Day FROM food_sales
	GROUP BY DAY(SalesDate) ORDER BY SUM(UnitPrice) ASC; -- lowest sold in one day


SELECT MONTH(SalesDate) AS Sales_per_Day, SUM(Quantity) AS Quantities FROM food_sales
	GROUP BY MONTH(SalesDate) ORDER BY SUM(Quantity) DESC; -- total food sold by pieces per month

SELECT FoodItem, COUNT(*) AS BestSeller FROM
	Food_Sales GROUP BY FoodItem ORDER BY BestSeller DESC; -- Best seller 


SELECT City, COUNT(*) AS Customers_City FROM
	Food_Sales GROUP BY City ORDER BY Customers_City DESC; -- Top customers from a country


SELECT DISTINCT(City) FROM food_sales; -- cities

SELECT DISTINCT(PaymentMethod) FROM food_sales; -- payment methods