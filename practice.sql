SELECT 
    itm.item_category AS Category,
    SUM(CASE WHEN EXTRACT(DOW FROM ord.order_date) = 1 THEN ord.quantity ELSE 0 END) AS Monday,
    SUM(CASE WHEN EXTRACT(DOW FROM ord.order_date) = 2 THEN ord.quantity ELSE 0 END) AS Tuesday,
    SUM(CASE WHEN EXTRACT(DOW FROM ord.order_date) = 3 THEN ord.quantity ELSE 0 END) AS Wednesday,
    SUM(CASE WHEN EXTRACT(DOW FROM ord.order_date) = 4 THEN ord.quantity ELSE 0 END) AS Thursday,
    SUM(CASE WHEN EXTRACT(DOW FROM ord.order_date) = 5 THEN ord.quantity ELSE 0 END) AS Friday,
    SUM(CASE WHEN EXTRACT(DOW FROM ord.order_date) = 6 THEN ord.quantity ELSE 0 END) AS Saturday,
    SUM(CASE WHEN EXTRACT(DOW FROM ord.order_date) = 0 THEN ord.quantity ELSE 0 END) AS Sunday
FROM 
    Orders ord
JOIN
    Items itm ON ord.item_id = itm.item_id
GROUP BY
    itm.item_category
ORDER BY
    itm.item_category;
