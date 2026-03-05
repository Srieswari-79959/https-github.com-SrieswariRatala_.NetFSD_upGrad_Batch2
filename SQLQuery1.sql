USE Orders 
SELECT * FROM Products
SELECT CONCAT(Product_Name,' (', model_year, ')') AS 'Product_Details',list_price,list_price-(SELECT AVG(list_price) FROM Products WHERE Categories_Id=P.Categories_Id) AS 'Difference AVG' FROM Products P WHERE list_price>(
	SELECT AVG(list_price) FROM Products WHERE Categories_Id=P.Categories_Id
	)
