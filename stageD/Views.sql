
--view 1
CREATE OR REPLACE VIEW CATERINGORDERDETAILS AS
SELECT o.order_id, o.totalprice, o.order_date, o.address, c.name AS customer_name, c.phonenumber, d.description AS dish_description, b.amount
FROM THE_ORDER o
JOIN CUSTOMER c ON o.customer_id = c.customer_id
JOIN BELONG b ON o.order_id = b.order_id
JOIN DISHS d ON b.dishs_id = d.dishs_id;

--selsct 1.1
SELECT order_id, totalprice, customer_name, phonenumber, address
FROM CateringOrderDetails
WHERE order_date = TO_DATE('2021-08-21', 'YYYY-MM-DD');

--selsct 1.2
SELECT customer_name, COUNT(dish_description) AS dishes_ordered
FROM CateringOrderDetails
GROUP BY customer_name;



--view 2
CREATE OR REPLACE VIEW KINDERGARTENOVERVIEW AS
SELECT g.group_id, g.group_name, g.age_group, g.hour, g.class_day, c.first_name, c.last_name, c.date_of_birth, c.parent_name
FROM GROUPS g
JOIN CHILDREN1 c ON g.group_id = c.group_id;

--selsct 2.1
SELECT first_name, last_name, date_of_birth
FROM KindergartenOverview
WHERE group_name = 'Spike';

--selsct 2.2
SELECT age_group, COUNT(*)
FROM KindergartenOverview
GROUP BY age_group;


