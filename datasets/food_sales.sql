/* Restaurant Food Sales from January - April 2025 */
/* Naming Conventions:
	CTE and Table column names: PascalCase - EveryFirstWordLetterInUpperCase
	SQL Queries: Uppercase
	Alias names: snake_case - lower case and word separated by _underscore
*/

-- sales per day, food sold per day
-- food sold by pieces per month
-- highest sold in one day
-- lowest sold in one day
-- best seller, top country customers
-- distinct categories, cities, payment methods
-- order datas by day, months

WITH SalesPerDay AS
(
	SELECT
		SalesDate,
		SUM(TotalSales) AS sales_per_day
	FROM food_sales
	GROUP BY SalesDate
), -- Sales per day

TotalFoodSoldPerDay AS
(
	SELECT
		SalesDate,
		SUM(Quantity) AS number_of_food_sold_per_day
	FROM food_sales
	GROUP BY SalesDate
), -- Number of food sold per day

FoodSoldPerMonth AS
(
	SELECT
		DATENAME(MONTH, SalesDate) AS months,
		SUM(Quantity) AS number_of_food_sold_per_month
	FROM food_sales
	GROUP BY DATENAME(MONTH, SalesDate)
), -- Number of food sold per month

HighestSoldOneDay AS
(
	SELECT
		MAX(TotalSales) AS highest_sale_one_day
	FROM food_sales
), -- Highest sale one day: 60.00

LowestSoldOneDay AS
(
	SELECT
		MIN(TotalSales) AS lowest_sale_one_day
	FROM food_sales
), -- Lowest sale one day: 3.00

BestSeller AS
(
	SELECT 
		FoodItem,
		SUM(Quantity) AS best_seller
	FROM food_sales
	GROUP BY FoodItem
), -- Best Seller: Fried Chicken 

TopCountryCustomers AS
(
	SELECT
		City,
		COUNT(*) number_of_customers
	FROM food_sales
	GROUP BY City
), -- Top Customers: San Francisco

Categories AS
(
	SELECT
		Category
	FROM food_sales
	GROUP BY Category
), -- Food Categories: Japanese, Mexican, Vegetarian, Healthy, Fast Food, Italian

Cities AS
(
	SELECT
		City
	FROM food_sales
	GROUP BY City
), -- Cities: Austin, New York, Boston, Chicago, San Francisco

PaymentMethods AS
(
	SELECT
		PaymentMethod
	FROM food_sales
	GROUP BY PaymentMethod
) -- Payment methods: Cash, UPI, Card

SELECT 
*
FROM food_sales
ORDER BY SalesDate; -- Datas in order by Year-Month-Day

