-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, Category.CategoryName FROM Product
INNER JOIN Category
ON Product.CategoryId=Category.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT "Order".id, Shipper.CompanyName FROM "Order"
INNER JOIN Shipper
ON "Order".ShipVia=Shipper.id
WHERE "Order".ShippedDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Product.ProductName, od.Quantity FROM OrderDetail as od
INNER JOIN Product
ON od.ProductId=Product.Id
WHERE OrderId=10251
ORDER BY Product.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT "Order".id as "OrderId", Customer.CompanyName as "Customer's Company Name", Employee.LastName "Employee's Last Name" FROM "Order"
INNER JOIN Customer
ON "Order".CustomerId=Customer.id
INNER JOIN Employee
ON "Order".EmployeeId=Employee.id;