SELECT upc, description
FROM Inventory
WHERE quantity == 0;

SELECT EmpId, name , role 
FROM Employee
WHERE role = 'Sales Associate' OR role = 'cashier' OR role = 'Manager';

SELECT i.upc, i.description 
FROM Inventory i
LEFT JOIN Sales s ON i.upc = s.upc
WHERE s.upc IS NULL;

SELECT *
FROM Sales a
JOIN Inventory b
ON a.upc = b.upc
WHERE DATE(a.date)=DATE();

SELECT v.vend_name, SUM(i.quantity * i.price) AS inventory_value
FROM Inventory i
JOIN Vendor v ON i.vendor_id = v.vendor_id
GROUP BY v.vendor_id
ORDER BY inventory_value DESC;

SELECT vend_name, SUM(price) as subtotal
FROM Inventory a
JOIN Sales b ON a.upc = b.upc
JOIN Vendor c ON a.vendor_id = c.vendor_id
GROUP BY vend_name
ORDER BY subtotal DESC;

SELECT DISTINCT(vend_name)
FROM Vendor 
NATURAL JOIN Inventory 
WHERE quantity > 0;

SELECT description, SUM(quantity)
FROM Inventory
GROUP BY description;

SELECT description, price, 'Premium' AS price_tier
FROM Inventory
WHERE price > 1000
UNION
SELECT description, price, 'Standard' AS price_tier
FROM Inventory
WHERE price BETWEEN 100 AND 1000
UNION
SELECT description, price, 'Budget' AS price_tier
FROM Inventory
WHERE price < 100
ORDER BY price DESC;

SELECT v.vendor_id, v.vend_name, AVG(i.price) AS average_price
FROM Inventory i
JOIN Vendor v ON i.vendor_id = v.vendor_id
GROUP BY v.vendor_id, v.vend_name
ORDER BY average_price DESC;
