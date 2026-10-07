CREATE TABLE time_series_final_sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    customer_name VARCHAR(50),
    category VARCHAR(50),
    sales_amount INT
);

INSERT INTO time_series_final_sales
(sale_id, sale_date, customer_name, category, sales_amount)
VALUES
(1, '2025-10-01', 'Kavita', 'Electronics', 25000),
(2, '2025-10-02', 'Harini', 'Furniture', 18000),
(3, '2025-10-03', 'Sakshi', 'Electronics', 32000),
(4, '2025-10-05', 'Nandini', 'Furniture', 21000),
(5, '2025-10-06', 'Ishita', 'Electronics', 28000),
(6, '2026-01-01', 'Madhavi', 'Furniture', 35000),
(7, '2026-01-02', 'Rupali', 'Electronics', 42000),
(8, '2026-01-04', 'Anjali', 'Furniture', 30000),
(9, '2026-01-05', 'Poonam', 'Electronics', 38000),
(10, '2026-02-01', 'Bhavna', 'Furniture', 45000),
(11, '2026-02-02', 'Trisha', 'Electronics', 50000),
(12, '2026-02-04', 'Mitali', 'Furniture', 40000);

-- Extract date parts
SELECT
    sale_date,
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    EXTRACT(DAY FROM sale_date) AS day
FROM time_series_final_sales
ORDER BY sale_date;

-- Find minimum and maximum date
SELECT
    MIN(sale_date) AS minimum_date,
    MAX(sale_date) AS maximum_date
FROM time_series_final_sales;

-- Daily aggregation
SELECT
    sale_date,
    SUM(sales_amount) AS daily_sales,
    AVG(sales_amount) AS average_sales
FROM time_series_final_sales
GROUP BY sale_date
ORDER BY sale_date;

-- Weekly aggregation
SELECT
    DATE_TRUNC('week', sale_date)::DATE AS week_start,
    SUM(sales_amount) AS weekly_sales
FROM time_series_final_sales
GROUP BY DATE_TRUNC('week', sale_date)
ORDER BY week_start;

-- Monthly aggregation
SELECT
    DATE_TRUNC('month', sale_date)::DATE AS month_start,
    SUM(sales_amount) AS monthly_sales
FROM time_series_final_sales
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY month_start;

-- Quarterly aggregation
SELECT
    DATE_TRUNC('quarter', sale_date)::DATE AS quarter_start,
    SUM(sales_amount) AS quarterly_sales
FROM time_series_final_sales
GROUP BY DATE_TRUNC('quarter', sale_date)
ORDER BY quarter_start;

-- Yearly aggregation
SELECT
    DATE_TRUNC('year', sale_date)::DATE AS year_start,
    SUM(sales_amount) AS yearly_sales
FROM time_series_final_sales
GROUP BY DATE_TRUNC('year', sale_date)
ORDER BY year_start;

-- Find missing dates
SELECT
    generated_date::DATE AS missing_date
FROM GENERATE_SERIES(
    (SELECT MIN(sale_date) FROM time_series_final_sales),
    (SELECT MAX(sale_date) FROM time_series_final_sales),
    INTERVAL '1 day'
) AS generated_date
WHERE generated_date::DATE NOT IN (
    SELECT sale_date
    FROM time_series_final_sales
)
ORDER BY missing_date;

-- Fill missing dates
SELECT
    calendar_date::DATE AS sale_date,
    COALESCE(SUM(t.sales_amount), 0) AS daily_sales
FROM GENERATE_SERIES(
    (SELECT MIN(sale_date) FROM time_series_final_sales),
    (SELECT MAX(sale_date) FROM time_series_final_sales),
    INTERVAL '1 day'
) AS calendar_date
LEFT JOIN time_series_final_sales t
    ON t.sale_date = calendar_date::DATE
GROUP BY calendar_date
ORDER BY calendar_date;

-- Running total and cumulative average
SELECT
    sale_date,
    sales_amount,
    SUM(sales_amount) OVER (
        ORDER BY sale_date
    ) AS running_total,
    AVG(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS cumulative_average
FROM time_series_final_sales
ORDER BY sale_date;

-- Moving average and rolling sum
SELECT
    sale_date,
    sales_amount,
    AVG(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_average,
    SUM(sales_amount) OVER (
        ORDER BY sale_date
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS rolling_sum
FROM time_series_final_sales
ORDER BY sale_date;

-- Previous and next period
SELECT
    sale_date,
    sales_amount,
    LAG(sales_amount) OVER (
        ORDER BY sale_date
    ) AS previous_sale,
    LEAD(sales_amount) OVER (
        ORDER BY sale_date
    ) AS next_sale
FROM time_series_final_sales
ORDER BY sale_date;

-- Date-based ranking
SELECT
    sale_date,
    customer_name,
    sales_amount,
    RANK() OVER (
        PARTITION BY sale_date
        ORDER BY sales_amount DESC
    ) AS sales_rank
FROM time_series_final_sales
ORDER BY sale_date, sales_rank;

-- Monthly revenue with previous month
WITH monthly_data AS (
    SELECT
        DATE_TRUNC('month', sale_date)::DATE AS month_start,
        SUM(sales_amount) AS total_sales
    FROM time_series_final_sales
    GROUP BY DATE_TRUNC('month', sale_date)
)
SELECT
    month_start,
    total_sales,
    LAG(total_sales) OVER (
        ORDER BY month_start
    ) AS previous_month_sales,
    total_sales -
    LAG(total_sales) OVER (
        ORDER BY month_start
    ) AS month_change
FROM monthly_data
ORDER BY month_start;

-- Yearly revenue with previous year
WITH yearly_data AS (
    SELECT
        DATE_TRUNC('year', sale_date)::DATE AS year_start,
        SUM(sales_amount) AS total_sales
    FROM time_series_final_sales
    GROUP BY DATE_TRUNC('year', sale_date)
)
SELECT
    year_start,
    total_sales,
    LAG(total_sales) OVER (
        ORDER BY year_start
    ) AS previous_year_sales,
    total_sales -
    LAG(total_sales) OVER (
        ORDER BY year_start
    ) AS year_change
FROM yearly_data
ORDER BY year_start;

-- Consecutive date analysis
WITH date_analysis AS (
    SELECT
        customer_name,
        sale_date,
        LAG(sale_date) OVER (
            ORDER BY sale_date
        ) AS previous_date
    FROM time_series_final_sales
)
SELECT
    customer_name,
    sale_date,
    previous_date,
    CASE
        WHEN sale_date = previous_date + INTERVAL '1 day'
        THEN 'Consecutive'
        ELSE 'Not Consecutive'
    END AS date_status
FROM date_analysis
ORDER BY sale_date;