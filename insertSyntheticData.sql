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

INSERT INTO Sales(receiptNo, date, EmpID, CustID, upc)
VALUES (1, NULL, 1, 1, 1);


INSERT INTO Sales(receiptNo, date, EmpID, CustID, upc)
VALUES (2, NULL, 2, 2, 2);


INSERT INTO Sales(receiptNo, date, EmpID, CustID, upc)
VALUES (3, NULL, 3, 3, 3);


INSERT INTO Sales(receiptNo, date, EmpID, CustID, upc)
VALUES (4, NULL, 4, 4, 4);


INSERT INTO Sales(receiptNo, date, EmpID, CustID, upc)
VALUES (5, NULL, 5, 5, 5);


INSERT INTO Sales(receiptNo, date, EmpID, CustID, upc)
VALUES (6, NULL, 6, 6, 6);


INSERT INTO Sales(receiptNo, date, EmpID, CustID, upc)
VALUES (7, NULL, 7, 7, 7);

CREATE TABLE IF NOT EXISTS temp_inv(
    upc INTEGER PRIMARY KEY,
    description TEXT NOT NULL,
    quantiy INTEGER DEFAULT 0,
    price FLOAT DEFAULT 0.00,
    vendor_id INTEGER NOT NULL
);

.import ./mock_data/inventory_data.csv temp_inv

--DROP TABLE IF EXISTS temp_inv;


