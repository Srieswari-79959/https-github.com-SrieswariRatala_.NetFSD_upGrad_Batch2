USE eshasai
CREATE TABLE Product_Price(
	Product_Name VARCHAR(50)    NOT NULL,
	Brand_Name   VARCHAR(60)	NOT NULL,
	Category_Name VARCHAR(50)	NOT NULL,
	Model_Year		DATETIME	NOT NULL,
	List_Price		INT			NOT NULL,
	
)
DROP TABLE Product_Price
INSERT INTO Product_Price VALUES('Laptop','Dell','Electronics','2023-01-01',65000),
								('Mobile','Samsung','Electronics','2024-01-01',30000),
								('Headphones','Sony','Accessories','2022-01-01',500),
								('Smart Watch','Apple','Wearables','2023-01-01',450),
								('Tablet','Lenovo','Electronics','2024-01-01',25000),
								('Camera','Canon','Electronics','2022-01-01',70000),
								('Keyboard','Logitech','Accessories','2023-01-01',2000),
								('Mouse','HP','Accessories','2023-01-01',1200),
								('Monitor','LG','Electronics','2024-01-01',180),
								('Printer','Epson','Electronics','2022-01-01',150);
SELECT * FROM Product_Price WHERE List_Price >500 ORDER BY List_Price;
