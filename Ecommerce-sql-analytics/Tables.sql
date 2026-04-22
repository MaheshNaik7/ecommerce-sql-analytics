-- Create database
-- CREATE DATABASE ecommerce_analytics;
-- USE ecommerce_analytics;

-- Customers table
CREATE TABLE customers (
    customer_id   INT          PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email         VARCHAR(100) UNIQUE,
    city          VARCHAR(50),
    signup_date   DATE
);

-- Products table
CREATE TABLE products (
    product_id   INT          PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category     VARCHAR(50),
    price        DECIMAL(10,2) CHECK (price > 0)
);

-- Orders table
CREATE TABLE orders (
    order_id    INT  PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date  DATE,
    status      VARCHAR(20) DEFAULT 'PENDING',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    ON DELETE SET NULL
);

-- Order items table
CREATE TABLE order_items (
    item_id    INT PRIMARY KEY AUTO_INCREMENT,
    order_id   INT,
    product_id INT,
    quantity   INT CHECK (quantity > 0),
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id)   REFERENCES orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE SET NULL
);

