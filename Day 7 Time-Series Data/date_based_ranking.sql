CREATE TABLE daily_product_sales_rank (
    sale_id INT PRIMARY KEY,
    sale_date DATE,
    product_name VARCHAR(50),
    sales_amount INT
);

INSERT INTO daily_product_sales_rank
(sale_id, sale_date, product_name, sales_amount)
VALUES
(1, '2026-10-01', 'Laptop', 85000),
(2, '2026-10-01', 'Tablet', 45000),
(3, '2026-10-01', 'Monitor', 30000),
(4, '2026-10-02', 'Laptop', 92000),
(5, '2026-10-02', 'Tablet', 52000),
(6, '2026-10-02', 'Monitor', 28000),
(7, '2026-10-03', 'Laptop', 76000),
(8, '2026-10-03', 'Tablet', 58000),
(9, '2026-10-03', 'Monitor', 35000);

-- Rank products based on sales for each date

SELECT
    sale_date,
    product_name,
    sales_amount,
    RANK() OVER (
        PARTITION BY sale_date
        ORDER BY sales_amount DESC
    ) AS sales_rank
FROM daily_product_sales_rank
ORDER BY sale_date, sales_rank;