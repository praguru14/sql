-- select emp_name,max(emp_salary) as max_sal from employee where emp_salary< (select max(emp_salary) from employee) group by emp_name order by max_sal desc  ;
-- select * from employee order by emp_salary desc;
--     List all orders along with the customer names.
--     select ordd.*, c.customer_name from orders ordd join customers c on ordd.customer_id = c.customer_id;
-- -------------------------------------------------------------------------------------------------------
--     Show the product name and price for each order.
-- 	   select * from products;

-- -------------------------------------------------------------------------------------------------------
--     Display the student names along with their grades.

-- select s.student_name from grades g join students s on s.student_id = g.student_id;

-- -------------------------------------------------------------------------------------------------------

--     Find the average salary of all employees.

-- select avg(emp_salary) from employee;

-- -------------------------------------------------------------------------------------------------------
-- Calculate the total number of orders.

-- select count(order_id) from orders;
-- -------------------------------------------------------------------------------------------------------
--     Determine the highest and lowest grades in the Grades table.
-- select max(grade) as max , min(grade) as min from grades;
-- -------------------------------------------------------------------------------------------------------
-- --     Find the employees whose salary is above the average salary.
-- 	select * from employee where emp_salary > (select avg(emp_salary) from employee);

-- ----------------------------------------------------------------------------------------------------------
--     Identify the orders made by customers named "John".
	
--     select c.* from Customers c join ord o on c.customer_id = o.customer_id where customer_name = 'John';
	
-- ----------------------------------------------------------------------------------------------------------
-- Retrieve the top 3 highest-paid employees.

-- select * from employee  order by emp_salary desc limit 3;


-- ----------------------------------------------------------------------------------------------------------
--     Show the average grade for each student.
	-- select s.student_id, s.student_name,avg(g.grade) as avg_g from Students s join grades g on s.student_id = g.student_id group by s.student_id, s.student_name; 
--     Retrieve the orders made in March 2023.
-- select * from orders where order_date like '_____03%';
-- ----------------------------------------------------------------------------------------------------------

--     List the products whose price is greater than $500.

-- select * from products where price > 500;

-- ----------------------------------------------------------------------------------------------------------
--     Display the names of customers who have not placed any orders.

-- select customers.customer_name,customers.customer_id from customers left join ord o on customers.customer_id = o.customer_id where o.order_id is NULL




-- ----------------------------------------------------------------------------------------------------------




