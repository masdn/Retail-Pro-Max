INSERT INTO Employee(EmpID, name, role, vend_name)
VALUES (1, "Eliud", "manager", "Nike");


INSERT INTO Employee(EmpID, name, role, vend_name)
VALUES (2, "Sav", "owner", "Samsung");


INSERT INTO Employee(EmpID, name, role, vend_name)
VALUES (3, "Miles", "peasent", "Zara");


INSERT INTO Employee(EmpID, name, role, vend_name)
VALUES (4, "Nathan", "cashier", "Apple" );


INSERT INTO Employee(EmpID, name, role, vend_name)
VALUES (5, "Marnie", "cashier", "Pepsi");


INSERT INTO Employee(EmpID, name, role, vend_name)
VALUES (6, "Liz", "cashier", "Nestle");


INSERT INTO Employee(EmpID, name, role, vend_name)
VALUES (7, "Tanisha", "cashier", "Adidas");

INSERT INTO Sales(receiptNo, EmpID, CustPhone, upc)
VALUES (1, 1, 9098267635, 1);


INSERT INTO Sales(receiptNo, EmpID, CustPhone, upc)
VALUES (2, 2, 2776751724, 2);


INSERT INTO Sales(receiptNo, EmpID, CustPhone, upc)
VALUES (3, 3, 2776751724, 3);


INSERT INTO Sales(receiptNo, EmpID, CustPhone, upc)
VALUES (4, 4, 8362160449, 4);


INSERT INTO Sales(receiptNo, EmpID, CustPhone, upc)
VALUES (5, 5, 8362160449, 5);


INSERT INTO Sales(receiptNo, EmpID, CustPhone, upc)
VALUES (6, 6, 6852899987, 6);


INSERT INTO Sales(receiptNo, EmpID, CustPhone, upc)
VALUES (7, 7, 1414786801, 7);

CREATE TABLE IF NOT EXISTS temp_inv(
    upc INTEGER PRIMARY KEY,
    description TEXT NOT NULL,
    quantiy INTEGER DEFAULT 0,
    price FLOAT DEFAULT 0.00,
    vendor_id INTEGER NOT NULL
);

.mode csv
.import ./mock_data/inventory_data.csv temp_inv

INSERT INTO Inventory(upc, description, quantity, price, vendor_id)
SELECT * FROM temp_inv;

DROP TABLE IF EXISTS temp_inv;

CREATE TABLE IF NOT EXISTS temp_vend(
    vendor_id INTEGER PRIMARY KEY,
    vend_name TEXT NOT NULL
);

.import ./mock_data/vendor_data.csv temp_vend

INSERT INTO Vendor(vendor_id, vend_name)
SELECT * FROM temp_vend;

DROP TABLE IF EXISTS temp_vend;


CREATE TABLE IF NOT EXISTS temp_cust(
    phoneNo INTEGER PRIMARY KEY,
    vend_name TEXT NOT NULL
);

.import ./mock_data/customer_data.csv temp_cust

INSERT INTO Customers(phoneNo, name)
SELECT * FROM temp_cust;

DROP TABLE IF EXISTS temp_cust;
.mode column