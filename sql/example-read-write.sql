-- Write query (goes to RDS/Aurora writer endpoint)
INSERT INTO orders (id, customer, amount) VALUES (101, 'Rupali', 1500);

-- Read query (goes to Aurora reader endpoint)
SELECT * FROM orders WHERE customer = 'Rupali';
