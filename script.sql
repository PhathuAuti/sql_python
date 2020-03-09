CREATE TABLE Customers(
CustomerID SERIAL PRIMARY KEY,
FirstName varchar (50),
LastName varchar (50),
Gender varchar,
Address varchar(200),
Phone int NOT NULL CHECK (Phone >= 10),
Email varchar (100),
City varchar (20),
Country varchar (50)
)

CREATE TABLE Employees(
EmployeeID SERIAL PRIMARY KEY,
FirstName varchar (50),
LastName varchar (50),
Email varchar (100),
JobTitle varchar (20)
)

CREATE TABLE Products(
ProductID SERIAL PRIMARY KEY,
ProductName varchar (100),
Description varchar (300),
BuyPrice decimal
)

CREATE TABLE Payments(   
CustomerId int,
PaymentID SERIAL PRIMARY KEY,
PaymentDate timestamp,
Amount decimal,
FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
)

CREATE TABLE Orders(   
OrderId SERIAL PRIMARY KEY,
ProductID int,
PaymentID int,
FulfilledByEmployeeID int,
DateRequired timestamp,
DateShipped timestamp,
Status varchar (20),
FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID),
FOREIGN KEY (FulfilledByEmployeeID) REFERENCES Employees(EmployeeID)
)

INSERT INTO Customers (FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES ('John', 'Hilbert', 'Male', '284 chaucer st', 084789657, 'john@gmail.com', 'Johannesburg', 'South Africa'),
('Thando', 'Sithole', 'Female', '240 Sect 1', 0794445584, 'thando@gmail.com', 'Cape Town', 'South Africa'),
('Leon', 'Glen', 'Male', '81 Everton Rd,Gillits', 0820832830, 'Leon@gmail.com', 'Durban', 'South Africa'),
('Charl', 'Muller', 'Male', '290A Dorset Ecke', 44856872553, 'Charl.muller@yahoo.com', 'Berlin', 'Germany'),
('Julia', 'Stein', 'Female', '2 Wernerring', 448672445058, 'Js234@yahoo.com', 'Frankfurt', 'Germany')

INSERT INTO Employees (FirstName, LastName, Email, JobTitle)
VALUES ('Kani', 'Matthew', 'mat@gmail.com', 'Manager'),
('Lesly	', 'Cronje', 'LesC@gmail.com', 'Clerk'),
('Gideon', 'Maduku', 'm@gmail.com', 'Accountant')

INSERT INTO Products (ProductName, Description, BuyPrice)
VALUES ('Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', 150.75),
('Classic Car	', 'Turnable front wheels, steering function', 550.75),
('Sports car', 'Turnable front wheels, steering function', 700.60)

INSERT INTO Payments (CustomerId, PaymentDate, Amount)
VALUES (1, '01-09-2018', 150.75),
(5, '03-09-2018', 150.75),
(4, '03-09-2018', 700.60)

INSERT INTO Orders (ProductID, PaymentID, FulfilledByEmployeeID, DateRequired, DateShipped, Status)
VALUES (1, 1, 2, '05-09-2018', null,'Not shipped'),
(1, 2, 2, '04-09-2018', '03-09-2018', 'Shipped'),
(3, 3, 3, '06-09-2018', null,'Not shipped')

