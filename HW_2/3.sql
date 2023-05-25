CREATE TABLE orders (
	id INT PRIMARY KEY AUTO_INCREMENT, 
	employee_id INT DEFAULT 0,
	amount DECIMAL(10,2),
	order_status VARCHAR (20)
	);


INSERT INTO orders (employee_id, amount, order_status) 
	VALUES  (1, 15.00, 'Open'), 
		(2, 25.50, 'Open'), 
		(2, 25.50, 'Open'), 
		(3, 100.70, 'Closed'), 
		(4, 9.50, 'Canceled'), 
		(77, 115.94, 'Closed');


SELECT id, order_status, 
	CASE  
	WHEN order_status = 'Open' THEN 'Order is an open state' 
	WHEN order_status = 'Closed' THEN 'Order is closed' 
	WHEN order_status = 'Canceled' THEN 'Order is canceled' END AS order_summary 
	FROM orders;

