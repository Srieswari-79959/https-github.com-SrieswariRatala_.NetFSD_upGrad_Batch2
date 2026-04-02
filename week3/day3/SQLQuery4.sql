CREATE DATABASE Orders
USE Orders
CREATE TABLE Customer(
	customer_Id			INT				PRIMARY KEY,
	first_name			VARCHAR(50)	   NOT NULL,
	last_name			VARCHAR(50)	   NOT NULL,
	

)
INSERT INTO Customer VALUES
(1,'Rahul','Sharma'),
(2,'Anita','Verma'),
(3,'Kiran','Reddy'),
(4,'Sneha','Patel'),
(5,'Arjun','Kumar'),
(6,'Priya','Singh'),
(7,'Vikas','Gupta'),
(8,'Neha','Agarwal'),
(9,'Rohit','Mehta'),
(10,'Pooja','Nair');

SELECT * FROM Customer

CREATE TABLE Orders(
	Order_Id		INT			PRIMARY KEY,
	Customer_id		INT			 NOT NULL,
	Order_date		DATETIME	NOT NULL,
	Order_status    INT         NOT NULL


)
  

INSERT INTO Orders VALUES
		(101,1,'2024-01-10',1),
		(102,2,'2024-01-12',4),
		(103,3,'2024-01-15',2),
		(104,4,'2024-01-18',1),
		(105,5,'2024-01-20',4),
		(106,1,'2024-01-22',3),
		(107,2,'2024-01-24',1),
		(108,3,'2024-01-26',4),
		(109,4,'2024-01-28',2),
		(110,5,'2024-01-30',1);

SELECT * FROM Orders

SELECT O.Customer_id, O.Order_date, O.Order_Id,O.Order_status, C.first_name, C.last_name FROM Orders O
INNER JOIN
Customer C
ON O.Customer_id=C.customer_Id
WHERE Order_status=1 OR Order_status=4 ORDER BY Order_date DESC
