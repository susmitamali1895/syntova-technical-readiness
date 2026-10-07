CREATE TABLE monthly_transactions_period (
    transaction_id INT PRIMARY KEY,
    transaction_date DATE,
    amount INT
);

INSERT INTO monthly_transactions_period
(transaction_id, transaction_date, amount)
VALUES
(1, '2026-01-05', 2500),
(2, '2026-01-18', 4200),
(3, '2026-02-03', 3100),
(4, '2026-02-22', 5800),
(5, '2026-03-08', 3600),
(6, '2026-03-25', 6400);

-- Find first and last record of each month

SELECT
    DATE_TRUNC('month', transaction_date)::DATE AS month_start,
    FIRST_VALUE(amount) OVER (
        PARTITION BY DATE_TRUNC('month', transaction_date)
        ORDER BY transaction_date
    ) AS first_amount,
    LAST_VALUE(amount) OVER (
        PARTITION BY DATE_TRUNC('month', transaction_date)
        ORDER BY transaction_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS last_amount
FROM monthly_transactions_period
ORDER BY month_start, transaction_date;