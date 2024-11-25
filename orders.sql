SELECT 
    i.item_category AS Category,
    SUM(CASE WHEN EXTRACT(DOW FROM o.order_date) = 1 THEN o.quantity ELSE 0 END) AS Monday,
    SUM(CASE WHEN EXTRACT(DOW FROM o.order_date) = 2 THEN o.quantity ELSE 0 END) AS Tuesday,
    SUM(CASE WHEN EXTRACT(DOW FROM o.order_date) = 3 THEN o.quantity ELSE 0 END) AS Wednesday,
    SUM(CASE WHEN EXTRACT(DOW FROM o.order_date) = 4 THEN o.quantity ELSE 0 END) AS Thursday,
    SUM(CASE WHEN EXTRACT(DOW FROM o.order_date) = 5 THEN o.quantity ELSE 0 END) AS Friday,
    SUM(CASE WHEN EXTRACT(DOW FROM o.order_date) = 6 THEN o.quantity ELSE 0 END) AS Saturday,
    SUM(CASE WHEN EXTRACT(DOW FROM o.order_date) = 0 THEN o.quantity ELSE 0 END) AS Sunday
FROM 
    Orders o
JOIN 
    Items i ON o.item_id = i.item_id
GROUP BY 
    i.item_category
ORDER BY 
    i.item_category;
