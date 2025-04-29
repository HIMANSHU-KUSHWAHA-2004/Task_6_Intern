create database pizza_sales ;
use pizza_sales;
CREATE TABLE online_sales (
    pizza_id INT,
    order_id VARCHAR(50),
    pizza_name_id VARCHAR(100),
    quantity INT,
    order_date DATE,
    order_time TIME,
    unit_price DECIMAL(10,2),
    total_price DECIMAL(10,2),
    pizza_size VARCHAR(10),
    pizza_category VARCHAR(50),
    pizza_ingredients TEXT,
    pizza_name VARCHAR(100)
);

SELECT COUNT(*) FROM pizza_sales;

SELECT
    YEAR(STR_TO_DATE(order_date, '%e/%c/%Y')) AS year,
    MONTH(STR_TO_DATE(order_date, '%e/%c/%Y')) AS month,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    pizza_sales
WHERE
    STR_TO_DATE(order_date, '%e/%c/%Y') BETWEEN '2015-01-01' AND '2015-12-31'
GROUP BY
    year, month
ORDER BY
    year, month;

