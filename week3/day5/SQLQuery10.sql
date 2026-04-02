USE Orders
CREATE TABLE Stocks(
	stock_Id     INT    PRIMARY KEY,
	store_Id	 INT    NOT NULL,
	Product_Id   INT    NOT NULL,
	Quantity     INT    NOT NULL
)



INSERT INTO Stocks VALUES (1,1,1,50),
						  (2,1,2,30),
						  (3,2,1,40),
						  (4,2,3,25),
						  (5,3,2,60),
						  (6,3,4,20),
						  (7,4,1,35),
						  (8,4,5,15),
						  (9,5,3,45),
						  (10,5,4,10); 


SELECT * FROM Stocks

SELECT * FROM Products

SELECT * FROM Stores

SELECT * FROM Items

SELECT P.Product_Name,St.store_name,S.Quantity, SUM(S.Quantity * P.list_price) AS 'Total Quantity'   FROM Stocks S
LEFT JOIN
Products P
ON S.Product_Id=P.Product_Id
INNER JOIN
Stores St
ON S.store_Id=St.store_Id
GROUP BY P.Product_Name,St.store_name, S.Quantity
ORDER BY P.Product_Name




