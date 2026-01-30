CREATE TABLE Food_Sales (
	Order_ID INT, Sales_Date DATE, Customer_ID VARCHAR(20),
	Food_Item VARCHAR(30), Category VARCHAR(30), Quantity INT,
	Unit_Price NUMERIC, Total_Sales NUMERIC, Payment_Method VARCHAR(30),
	City VARCHAR(120)
);

SELECT * FROM Food_Sales ORDER BY Sales_Date ASC; 
SELECT DISTINCT(Category) FROM Food_Sales;

SELECT Sales_Date, SUM(Total_Sales) AS Sales_per_Day FROM Food_Sales
GROUP BY Sales_Date ORDER BY Sales_Date ASC;

SELECT Sales_Date, SUM(Quantity) AS Food_Sold_per_Day FROM Food_Sales
GROUP BY Sales_Date ORDER BY Sales_Date ASC;


SELECT MAX(max_sold) AS Pieces_Sold FROM (
	SELECT SUM(Quantity) AS max_sold FROM Food_Sales GROUP BY Sales_Date );
SELECT MIN(lowest_sold) AS Minimum_Pieces_Sold FROM (
	SELECT SUM(Quantity) AS lowest_sold FROM Food_Sales GROUP BY Sales_Date );


SELECT Food_Item, COUNT(*) AS Best_Seller FROM Food_Sales GROUP BY Food_Item;
SELECT City, COUNT(*) AS Customers_City FROM Food_Sales GROUP BY City;