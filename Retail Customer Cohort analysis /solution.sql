
-- undesrtanding about the dataset--
SELECT 
	COUNT(DISTINCT user_id) 
	FROM first_purchases; 
	--distinct count(71257) and count is same it means each user_is is unique

---------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT 
	COUNT(DISTINCT user_id) 
	 FROM purchases;
	 -- count is 227457 and distinct count is 39744 it means 39744 it simpaly means there are many customer who buy only onces


-----------------------------------------------------------------------------------------------------------------------------------------------------
-- To calculate the monthaly retention for Restaurant--
-- Calculate total users in 'Restaurant' product line for each month they made their first purchase
WITH RetailCohorts AS (
    SELECT 
        DATE_TRUNC('MONTH', fp.first_purchase_date) AS cohort_month,
        COUNT( DISTINCT fp.user_id) AS total_users
    FROM first_purchases as fp
    WHERE fp.product_line = 'Restaurant'
    GROUP BY 1 -- Grouping by month to count users for each month
),
RetailRetention AS (
    SELECT 
        DATE_TRUNC('month', fp.first_purchase_date) AS cohort_month,
        DATE_TRUNC('month', p.purchase_date) AS purchase_month,
        COUNT(DISTINCT p.user_id) AS retained_users
    FROM first_purchases as fp
     JOIN purchases as p 
	ON fp.user_id = p.user_id WHERE fp.product_line = 'Restaurant' AND p.product_line = 'Restaurant'
        GROUP BY 1, 2 
)-- calculates the count of users who are in Restaurant product line with respect to each month from frist_purchases and purchases table.
SELECT 
    rc.cohort_month,
    rr.purchase_month,
    COALESCE(rr.retained_users, 0) AS retained_users,
    rc.total_users,
    ROUND((COALESCE(rr.retained_users, 0)::numeric / rc.total_users) * 100, 2) AS retention_rate
FROM RetailCohorts as rc
LEFT JOIN RetailRetention as rr ON rc.cohort_month = rr.cohort_month
ORDER BY 1, 2; -- return a new table with cohort_month and the purchase_month with the retained users and total users in the month

------------------------------------------*---------------------------------------------------*-------------------------------------------------------------------------
------------------------------------------*---------------------------------------------------*-------------------------------------------------------------------------

-- To calculate the monthaly retention for Restaurant--
-- Calculate total users in 'Retail store' product line for each month they made their first purchase
WITH RetailCohorts AS (
    SELECT 
        DATE_TRUNC('MONTH', fp.first_purchase_date) AS cohort_month,
        COUNT( DISTINCT fp.user_id) AS total_users
    FROM first_purchases as fp
    WHERE fp.product_line = 'Retail store'
    GROUP BY 1 -- Grouping by month to count users for each month
),
RetailRetention AS (
    SELECT 
        DATE_TRUNC('month', fp.first_purchase_date) AS cohort_month,
        DATE_TRUNC('month', p.purchase_date) AS purchase_month,
        COUNT(DISTINCT p.user_id) AS retained_users
    FROM first_purchases as fp
     JOIN purchases as p 
	ON fp.user_id = p.user_id WHERE fp.product_line = 'Retail store' AND p.product_line = 'Retail store' 
        GROUP BY 1, 2
)-- calculates the count of users who are in Retail store product line with respect to each month from frist_purchases and purchases table.
SELECT 
    rc.cohort_month,
    rr.purchase_month,
    COALESCE(rr.retained_users, 0) AS retained_users,
    rc.total_users,
    ROUND((COALESCE(rr.retained_users, 0)::numeric / rc.total_users) * 100, 2) AS retention_rate
FROM RetailCohorts as rc
LEFT JOIN RetailRetention as rr ON rc.cohort_month = rr.cohort_month
ORDER BY 1, 2; -- return a new table with cohort_month and the purchase_month with the retained users and total users in the month