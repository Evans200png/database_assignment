-- View to show customer orders and their status
CREATE VIEW customer_orders_view AS
SELECT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    o.order_id, 
    o.order_date, 
    os.status_description
FROM 
    customer c
JOIN 
    cust_order o ON c.customer_id = o.customer_id
JOIN 
    order_status os ON o.order_status_id = os.order_status_id;

-- Procedure to place a new order
DELIMITER //
CREATE PROCEDURE PlaceOrder(
    IN p_customer_id INT,
    IN p_shipping_method_id INT,
    IN p_order_date DATE,
    IN p_order_status_id INT
)
BEGIN
    INSERT INTO cust_order (
        customer_id, 
        order_status_id, 
        shipping_method_id, 
        order_date
    )
    VALUES (
        p_customer_id, 
        p_order_status_id, 
        p_shipping_method_id, 
        p_order_date
    );
END //
DELIMITER ;
