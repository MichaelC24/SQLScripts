SELECT *
	FROM Customers AS CU
	JOIN Orders OD
	ON OD.CustomerId = CU.Id

SELECT  Orders.Date
,	Orders.Description 'ORDER'
,	OrderLines.Product
,	OrderLines.Quantity
,	OrderLines.Price
,	OrderLines.Description

FROM Orders

JOIN OrderLines
ON Orders.Id = OrderLines.OrdersId

ORDER BY Product, OrderLines.Description 