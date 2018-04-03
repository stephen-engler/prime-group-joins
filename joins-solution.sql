--1Get all customers and their addresses
SELECT * FROM "customers" JOIN "addresses" ON "customers"."id" = "addresses"."customer_id";

--2 Get all orders and their line items
SELECT * FROM "orders" JOIN "line_items" ON "orders"."id" = "line_items"."order_id";

--3 Which warehoueses have cheetos?

SELECT * FROM "warehouse" JOIN "warehouse_product" ON "warehouse"."id" ="warehouse_product"."warehouse_id" 
                          JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
                          WHERE "description" = 'cheetos';

--4 Which warehouses have diet pepsi?
SELECT * FROM "warehouse" JOIN "warehouse_product" ON "warehouse"."id" ="warehouse_product"."warehouse_id" 
                          JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
                          WHERE "description" = 'diet pepsi';

--5 Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "customers"."first_name",count("customers"."id") FROM "customers" 

JOIN "addresses" ON "customers"."id" =  "addresses"."customer_id"
JOIN "orders" ON "addresses"."id" = "orders"."address_id"
GROUP BY "customers"."id";   
--6 How many customers do we have?
SELECT count(*) FROM "customers";

--7 How many products dow we carry?

SELECT count(*) FROM "products";

--8 What is the total available on-hand quantitiy of diet pepsi?

SELECT sum("on_hand") FROM "warehouse" JOIN "warehouse_product" ON "warehouse"."id" ="warehouse_product"."warehouse_id" 
                          JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
                          WHERE "description" = 'diet pepsi';


