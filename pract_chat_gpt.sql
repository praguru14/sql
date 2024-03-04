CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_salary DECIMAL(10, 2)
);

INSERT INTO Employee (emp_id, emp_name, emp_salary) VALUES
(1, 'John', 50000),
(2, 'Jane', 60000),
(3, 'Alice', 45000),
(4, 'Bob', 70000),
(5, 'Emily', 55000);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);
CREATE TABLE Grades (
    student_id INT,
    subject VARCHAR(50),
    grade DECIMAL(3, 1),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Emma');

INSERT INTO Grades (student_id, subject, grade) VALUES
(1, 'Math', 85.5),
(2, 'Math', 90.0),
(3, 'Math', 75.2),
(4, 'Math', 88.3),
(5, 'Math', 92.7);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(1, 101, '2023-01-10'),
(2, 102, '2023-02-15'),
(3, 101, '2023-03-20'),
(4, 103, '2023-04-25'),
(5, 104, '2023-05-30');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO Products (product_id, product_name, price) VALUES
(1, 'Laptop', 1200),
(2, 'Smartphone', 800),
(3, 'Tablet', 500),
(4, 'Camera', 700),
(5, 'Headphones', 150);


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

INSERT INTO Customers (customer_id, customer_name) VALUES
(101, 'John'),
(102, 'Jane'),
(103, 'Alice'),
(104, 'Bob'),
(105, 'Emily');

CREATE TABLE ord (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO ord (order_id, customer_id, order_date) VALUES
(1, 101, '2023-01-10'),
(2, 102, '2023-02-15'),
(3, 101, '2023-03-20'),
(4, 103, '2023-04-25'),
(5, 104, '2023-05-30');





