-- Create the color table
CREATE TABLE color (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    extra_fee DECIMAL(10, 2)
);

-- Create the customer table
CREATE TABLE customer (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    favorite_color_id INT,
    FOREIGN KEY (favorite_color_id) REFERENCES color(id)
);

-- Create the category table
CREATE TABLE category (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    parent_id INT,
    FOREIGN KEY (parent_id) REFERENCES category(id)
);

-- Create the clothing table
CREATE TABLE clothing (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    size VARCHAR(5),
    price DECIMAL(10, 2),
    color_id INT,
    category_id INT,
    FOREIGN KEY (color_id) REFERENCES color(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

-- Create the clothing_order table
CREATE TABLE clothing_order (
    id INT PRIMARY KEY,
    customer_id INT,
    clothing_id INT,
    items INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customer(id),
    FOREIGN KEY (clothing_id) REFERENCES clothing(id)
);
-- Insert sample data into the color table
INSERT INTO color (id, name, extra_fee) VALUES
(1, 'Red', 0.5),
(2, 'Blue', 0),
(3, 'Green', 0),
(4, 'Black', 1),
(5, 'White', 0.75);

-- Insert sample data into the customer table
INSERT INTO customer (id, first_name, last_name, favorite_color_id) VALUES
(1, 'John', 'Doe', 2),
(2, 'Jane', 'Smith', 1),
(3, 'Michael', 'Johnson', 3),
(4, 'Emily', 'Brown', 4),
(5, 'David', 'Wilson', 5);

-- Insert sample data into the category table
INSERT INTO category (id, name, parent_id) VALUES
(1, 'T-shirts', NULL),
(2, 'Shorts', NULL),
(3, 'Jackets', NULL),
(4, 'Men', 1),
(5, 'Women', 1),
(6, 'Accessories', NULL);

-- Insert sample data into the clothing table
INSERT INTO clothing (id, name, size, price, color_id, category_id) VALUES
(1, 'Red T-shirt', 'M', 15.99, 1, 4),
(2, 'Blue Shorts', 'L', 12.50, 2, 2),
(3, 'Green Jacket', 'XL', 29.99, 3, 3),
(4, 'Black Hoodie', 'M', 24.99, 4, 3),
(5, 'White Cap', NULL, 9.99, 5, 6);

-- Insert sample data into the clothing_order table
INSERT INTO clothing_order (id, customer_id, clothing_id, items, order_date) VALUES
(1, 1, 1, 2, '2024-03-01'),
(2, 2, 2, 1, '2024-03-02'),
(3, 3, 3, 1, '2024-03-03'),
(4, 4, 4, 3, '2024-03-04'),
(5, 5, 5, 2, '2024-03-05');
