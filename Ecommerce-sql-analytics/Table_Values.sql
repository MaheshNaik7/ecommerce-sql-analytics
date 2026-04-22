-- Insert customers
INSERT INTO customers (customer_name, email, city, signup_date) VALUES
('Rahul Sharma',  'rahul@gmail.com',  'Mumbai',    '2023-01-15'),
('Priya Singh',   'priya@gmail.com',  'Delhi',     '2023-02-20'),
('Amit Kumar',    'amit@gmail.com',   'Bangalore', '2023-03-10'),
('Sneha Patel',   'sneha@gmail.com',  'Chennai',   '2023-04-05'),
('Vikram Reddy',  'vikram@gmail.com', 'Hyderabad', '2023-05-12'),
('Anjali Mehta',  'anjali@gmail.com', 'Mumbai',    '2023-06-18'),
('Rohit Verma',   'rohit@gmail.com',  'Delhi',     '2023-07-22'),
('Deepa Nair',    'deepa@gmail.com',  'Bangalore', '2023-08-30');

-- Insert products
INSERT INTO products (product_name, category, price) VALUES
('iPhone 15',      'Electronics',  79999),
('Samsung TV',     'Electronics',  45999),
('Nike Shoes',     'Fashion',      5999),
('Levi Jeans',     'Fashion',      3499),
('Rice Cooker',    'Appliances',   2999),
('Coffee Maker',   'Appliances',   4599),
('Harry Potter',   'Books',        599),
('Python Book',    'Books',        799);

-- Insert orders
INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2024-01-05', 'DELIVERED'),
(2, '2024-01-10', 'DELIVERED'),
(3, '2024-01-15', 'DELIVERED'),
(4, '2024-02-01', 'DELIVERED'),
(5, '2024-02-14', 'DELIVERED'),
(1, '2024-02-20', 'DELIVERED'),
(6, '2024-03-05', 'DELIVERED'),
(7, '2024-03-12', 'CANCELLED'),
(8, '2024-03-20', 'DELIVERED'),
(2, '2024-04-01', 'PENDING');

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 79999),
(1, 7, 2, 599),
(2, 3, 1, 5999),
(2, 4, 1, 3499),
(3, 2, 1, 45999),
(4, 5, 1, 2999),
(4, 6, 1, 4599),
(5, 1, 1, 79999),
(6, 8, 3, 799),
(7, 3, 2, 5999),
(8, 2, 1, 45999),
(9, 6, 1, 4599),
(10, 7, 5, 599);