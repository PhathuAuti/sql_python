SELECT * FROM Customers

SELECT FirstName, LastName FROM Customers

SELECT FirstName, LastName FROM Customers WHERE CustomerId = 1

UPDATE Customers
SET FirstName = 'Lerato',
    LastName = 'Mabitso'
WHERE CustomerID = 1

DELETE FROM Customers
WHERE CustomerID = 2

SELECT Status, COUNT(*) as NUMBER_OF_ROWS FROM Orders
GROUP BY Status

SELECT MAX(Amount) FROM Payments

SELECT * FROM Customers ORDER BY Country 

SELECT * FROM Products WHERE BuyPrice BETWEEN 100 AND 600

SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin'

SELECT * FROM Customers WHERE City = 'Cape Town' OR City = 'Durban'

SELECT * FROM Products WHERE BuyPrice > 500

SELECT SUM(Amount) AS Total FROM Payments

SELECT COUNT(*) FROM Orders WHERE Status = 'Shipped'

SELECT AVG(BuyPrice) AS  Ave_Rand, 
AVG(BuyPrice/12) AS  Ave_Dollars FROM Products

SELECT * FROM Customers INNER JOIN Payments ON Payments.CustomerId = Customers.CustomerId

SELECT * FROM Products WHERE Description = 'Turnable front wheels, steering function'