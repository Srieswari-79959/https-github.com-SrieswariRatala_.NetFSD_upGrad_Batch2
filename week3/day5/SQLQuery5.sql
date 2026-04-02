USE Orders
CREATE TABLE Brands(
	brand_Id     INT			PRIMARY KEY,
	brand_Name	VARCHAR(50)		NOT NULL
)
INSERT INTO Brands VALUES(1,'Nike'),
						(2,'Adidas'),
						(3,'Puma'),
						(4,'Reebok'),
						(5,'Under Armour'),
						(6,'New Balance'),
						(7,'Fila'),
						(8,'Asics'),
						(9,'Converse'),
						(10,'Skechers');
SELECT * FROM Brands

CREATE TABLE Categories(
	Categories_Id    INT			 PRIMARY KEY,
	Categories_name  VARCHAR(50)	 NOT NULL

)

INSERT INTO Categories VALUES(1,'Shoes'),
							 (2,'Clothing'),
							 (3,'Accessories'),
							 (4,'Sportswear'),
							 (5,'Casual Wear'),
							 (6,'Running Gear'),
							 (7,'Training Equipment'),
						     (8,'Outdoor Wear'),
							 (9,'Fitness Wear'),
                             (10,'Lifestyle');
SELECT * FROM Categories
CREATE TABLE Products(
	Product_Id      INT				PRIMARY KEY,
	Product_Name    VARCHAR(50)		NOT NULL,
	brand_Id		INT             NOT NULL,
	Categories_Id   INT             NOT NULL,
	model_year      INT             NOT NULL,
	list_price      DECIMAL(10,2)   NOT NULL,

	)
INSERT INTO Products VALUES(1,'Air Max Shoe',1,1,2022,650),
							(2,'Ultraboost Shoe',2,1,2023,720),
							(3,'Running Jacket',3,8,2022,550),
							(4,'Training Shorts',4,4,2021,400),
							(5,'Fitness Cap',5,3,2023,250),
							(6,'Sport TShirt',6,2,2022,520),
							(7,'Trail Running Shoe',7,6,2023,810),
							(8,'Gym Gloves',8,7,2021,300),
							(9,'Classic Sneakers',9,10,2022,600),
							(10,'Walking Shoe',10,1,2023,580);


SELECT P.brand_Id,P.Categories_Id,P.list_price,P.model_year,P.Product_Id,P.Product_Name,B.brand_Name,C.Categories_name  FROM Products P
INNER JOIN
Brands B
ON P.brand_Id=B.brand_Id
INNER JOIN
Categories C
ON P.Categories_Id=C.Categories_Id
WHERE list_price>500 ORDER BY list_price
