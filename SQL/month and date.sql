SELECT MONTHNAME(CURRENT_DATE()) AS CurrentMonthName;
SELECT MONTHNAME(NOW()) AS CurrentMonthName;
SELECT CURRENT_DATE() AS CurrentMonthName;
SELECT NOW() AS CurrentMonthName;

SELECT
    product_category,
    SUM(CASE WHEN sales_amount > 1000 THEN sales_amount ELSE 0 END) AS total_sales_above_1000,
    AVG(CASE WHEN sales_amount <= 1000 THEN sales_amount END) AS average_sales_below_or_equal_1000
FROM
    sales
GROUP BY
    product_category;
