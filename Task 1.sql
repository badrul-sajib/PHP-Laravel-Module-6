--Write a SQL query to retrieve all the customer information along with the total number of orders placed by each customer. Display the result in descending order of the number of orders.
SELECT
    c.customer_id,
    c.customer_name,
    c.customer_email,
    c.customer_location,
    COUNT(o.order_id) AS total_orders
FROM
    Customers c
LEFT JOIN
    Orders o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id, c.customer_name, c.customer_email, c.customer_location
ORDER BY
    total_orders DESC;