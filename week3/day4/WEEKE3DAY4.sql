--Use nested query to calculate total order value per customer.--
ALTER TABLE Orders
ADD order_amount INT

UPDATE Orders
SET order_amount=
CASE 
    WHEN Order_Id = 101 THEN 500
    WHEN Order_Id = 102 THEN 300
    WHEN Order_Id = 103 THEN 700
    WHEN Order_Id = 104 THEN 400
    WHEN Order_Id = 105 THEN 600
    WHEN Order_Id = 106 THEN 200
    WHEN Order_Id = 107 THEN 800
    WHEN Order_Id = 108 THEN 350
    WHEN Order_Id = 109 THEN 900
    WHEN Order_Id = 110 THEN 450
END;
SELECT * FROM Orders
    SELECT  * FROM Customer
SELECT DISTINCT O.Customer_id, C.first_name+''+c.last_name AS 'Name',
ISNULL(
(
    SELECT SUM(O2.order_amount)  FROM Orders O2
    WHERE O2.Customer_id=O.Customer_id 
),0) AS TOTAl,


 CASE 
     WHEN ISNULL(
     (SELECT SUM(O2.order_amount)  FROM Orders O2
    WHERE O2.Customer_id=O.Customer_id),0) > 1000 THEN 'premium'
     
     WHEN ISNULL(
     (SELECT SUM(O2.order_amount)  FROM Orders O2
    WHERE O2.Customer_id=O.Customer_id),0) BETWEEN 500 AND 1000 THEN  'Regular'
    ELSE 'Basic'
    END AS customer_Type

    FROM Orders O
    JOIN Customer C
    ON O.customer_Id=C.customer_Id
    UNION
    SELECT customer_Id, c.first_name+''+c.last_name AS 'Name',0 AS 'TOTAL', 'Basic ' AS customer_Type FROM  Customer C
    WHERE c.customer_Id NOT IN(
        SELECT customer_Id FROM Orders 
    )


   