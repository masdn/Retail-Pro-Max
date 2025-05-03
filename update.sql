--promote all sales associates with a certain vendor name
--to manager
UPDATE Employee
SET role = 'Manager'
WHERE vend_name = 'Samsung';

--increase the price for all items from Apple by 10%
UPDATE Inventory
SET price = (price * .10) + price
WHERE (SELECT vendor_id FROM Vendor WHERE vend_name = "Apple");

--delete all items that are from the vendor Apple
DELETE FROM Inventory
WHERE vendor_id IN (SELECT vendor_id FROM Vendor WHERE vend_name LIKE '%Apple%');

--delete customers who haven't bought anything in over 
--10 years
DELETE FROM Customers
WHERE phoneNo IN (SELECT CustPhone FROM Sales WHERE date < date('now', '-10 years'));

--insert a single tuple into Sales
INSERT INTO Sales(receiptNo, EmpID, CustPhone, upc)
VALUES (100, 2, 2776751724, 100147857);

--insert a single tuple into Employee
INSERT INTO Employee(EmpID, name, role, vend_name)
VALUES (1000, "John", "owner", "Adidas");
