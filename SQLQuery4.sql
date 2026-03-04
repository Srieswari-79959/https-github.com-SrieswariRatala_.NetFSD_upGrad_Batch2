CREATE DATABASE eshasai;
	USE eshasai;
CREATE TABLE Customer_order(
	Order_Id    INT			 PRIMARY KEY,
	First_Name  VARCHAR(50)  NOT NULL,
	Last_Name   VARCHAR(45)  NOT NULL,
	Order_date	DATETIME	 NOT NULL,
	Order_status VARCHAR(50)	NOT NULL
)

INSERT INTO Customer_order VALUES(1,'sri', 'Eswari',  '2026-03-19', 'Pending'),
								 ( 2, 'Naga', 'Sai', '2025-12-22', 'Pending'),
								(3, 'eshu', 'paladugu', '2026-03-12', 'Completed'),
								(4, 'Sandhya', 'uppala', '2026-04-23', 'Completed'),
								(5, 'radha', 'uppala','2024-08-24','Completed'),
								(6,'sravya','nataraj','2032-04-23','Packed'),
								(7,'mouni', 'devara',  '2032-03-21', 'shifted'),
								(8,'pavani','bhagya','2012-02-19','Posted'),
								(9,'vijaya','musala', '2012-09-18','Pending'),
								(10,'souji', 'mata','2013-04-19', 'posted')


SELECT * FROM Customer_order;


SELECT * FROM Customer_order WHERE Order_status= 'Pending' OR Order_status='Completed' ORDER BY Order_date DESC