
----------------------------------------------------------------DBT Model------------------------------------------------------------------
--Creating a temp table for all manufacturing quandity in year 2022--
-- We can use this table for further analysis-- 
-- Below I am joining all the tables to make a common table--
DROP TABLE IF EXISTS manufacturing_log;
CREATE TEMPORARY TABLE manufacturing_log AS 
SELECT * FROM public."stg_manufactured_units_Jan"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Feb"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Mar"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Apr"
UNION ALL
SELECT * FROM public."stg_manufactured_units_May"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Jun"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Jul"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Aug"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Sep"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Oct"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Nov"
UNION ALL
SELECT * FROM public."stg_manufactured_units_Dec"
	
-- creating new coloum so we can join with production --
DROP TABLE IF EXISTS manufacturing_log_v2;
CREATE TABLE manufacturing_log_v2 AS 
WITH DATE AS (SELECT DATE("Date")  AS date, "Date", ("Product 1") AS product_1, ("Product 2") AS product_2
    FROM manufacturing_log
    ORDER BY "Date")
SELECT 'W' || EXTRACT(WEEK FROM "date") AS week_number, date, product_1, product_2
FROM DATE
ORDER BY "Date";


--now we have all the coloum needed to make sure that we can analye the manufacturing data with forcast plan--

--Create a manufacturing_summary model that aggregates the manufacturing data by week:--
-------------------------------------------------------------------------------------------------------------------------------
-- models/manufacturing_summary --
DROP TABLE IF EXISTS manufacturing_summary;
CREATE TABLE manufacturing_summary AS 
WITH manufacturing_aggregated AS (SELECT Sum(product_1) AS total_product_1,
	Sum(product_2) AS total_product_2,
	week_number 
	FROM manufacturing_log_v2
	GROUP BY week_number)
SELECT
    week_number,
    total_product_1,
    total_product_2
FROM manufacturing_aggregated;


--Create a production_summary model that aggregates the production data by week and product:--
---------------------------------------------------------------------------------------------------------------------------

-- models/production_summary --
DROP TABLE IF EXISTS production_summary;
CREATE TABLE production_summary AS 
WITH production_aggregated AS (SELECT  "Week" as week,
	"PN" AS PN, 
	SUM("Plan") AS total_plan
	FROM public."stg_production_plan_2022"
	GROUP BY 1,2)
SELECT
    week,
    PN,
    total_plan
FROM production_aggregated;							   

------------------------------------------------------------------------------------------------------------------------------
-- models/production_backlog by weeks--

SELECT
    p.Week,
    p.PN,
    p.total_plan - COALESCE(m.total_product_1, 0) AS backlog_product_1,
    p.total_plan - COALESCE(m.total_product_2, 0) AS backlog_product_2
FROM production_summary as p
LEFT JOIN manufacturing_summary AS m
    ON p.week = m.week_number
	ORDER BY 3,4;


