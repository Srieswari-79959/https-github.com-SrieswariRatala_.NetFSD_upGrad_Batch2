USE Orders

CREATE  TABLE Stores(
	store_Id   INT			 PRIMARY KEY,
	store_name  VARCHAR(50)  NOT NULL,

)

INSERT INTO Stores VALUES	(1,'Hyderabad Store'),
							(2,'Chennai Store'),
							(3,'Delhi Store'),
							(4,'Mumbai Store'),
							(5,'Bangalore Store'),
							(6,'Pune Store'),
							(7,'Kolkata Store'),
							(8,'Ahmedabad Store'),
							(9,'Jaipur Store'),
							(10,'Lucknow Store');
SELECT * FROM Stores
---to add new cloumn---
ALTER TABLE Orders
ADD store_Id INT

 SELECT * FROM Orders

 -- to insert new created row--
 UPDATE Orders
 SET store_Id =CASE Order_Id
 WHEN 101 THEN 1
 WHEN 102 THEN 2
 WHEN 103 THEN 4
 WHEN 104 THEN 5
 WHEN 105 THEN 1
 WHEN 106 THEN 2
 WHEN 107 THEN 4
 WHEN 108 THEN 5
 WHEN 109 THEN 2
 WHEN 110 THEN 5
 END;

 CREATE TABLE Items(
	Item_Id           INT        PRIMARY KEY,
	Order_Id		  INT        NOT NULL,
	Quantity		  INT		 NOT NULL,
	List_price        INT        NOT NULL
 )
 INSERT INTO Items VALUES(1,101,2,500),
						 (2,102,1,800),
						 (3,103,3,200),
						 (4,104,1,900),
						 (5,105,2,600),
						 (6,106,4,150),
						 (7,107,2,700),
						 (8,108,1,300),
						 (9,109,5,100),
		                 (10,110,3,450);
SELECT * FROM Items

SELECT s.store_name,SUM(I.Quantity * I.List_price) AS 'Total Sales' FROM Stores s
INNER JOIN
Orders O
ON s.store_Id=O.store_Id
INNER JOIN
Items  I
ON O.Order_Id=I.Order_Id
WHERE Order_status=4 
GROUP BY store_name
ORDER BY [Total Sales] DESC
