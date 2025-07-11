-- Write query goes to RDS (primary DB)
INSERT INTO orders (id, customer_name, amount) VALUES (101, 'Rupali', 2500);

-- Read query goes to Aurora Reader endpoint
SELECT * FROM orders WHERE customer_name = 'Rupali';
