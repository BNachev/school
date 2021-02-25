USE shops;

INSERT INTO status (status)
VALUES ('Delivered');
INSERT INTO status (status)
VALUES ('Delivering');
INSERT INTO status (status)
VALUES ('Pending');



INSERT INTO categories (category)
VALUES ('Plush');
INSERT INTO categories (category)
VALUES ('Car');
INSERT INTO categories (category)
VALUES ('Puzzle');



INSERT INTO users (email, password, username)
VALUES ('Gosho@gmail.com', 'Gosho123', 'Gosho');
INSERT INTO users (email, password, username)
VALUES ('Pesho@gmail.com', 'Pesho123', 'Pesho');
INSERT INTO users (email, password, username)
VALUES ('Kolio@gmail.com', 'Kolio123', 'Kolio');
INSERT INTO users (email, password, username)
VALUES ('Mihail@gmail.com', 'Mihail123', 'Mihail');
INSERT INTO users (email, password, username)
VALUES ('Blagoy@gmail.com', 'Blagoy123', 'Blagoy');
INSERT INTO users (email, password, username)
VALUES ('Kristian@gmail.com', 'Kristian123', 'Kristian');
INSERT INTO users (email, password, username)
VALUES ('Monika@gmail.com', 'Monika123', 'Monika');



INSERT INTO shops (address, work_hours)
VALUES ('bul. RaikoAlexiev 14', 14);
INSERT INTO shops (address, work_hours)
VALUES ('bul. Buhal 11', 11);
INSERT INTO shops (address, work_hours)
VALUES ('bul. Bularia 12', 12);



INSERT INTO products (name, price, category_id)
VALUES ('Brown Bear', 12.50, 1);
INSERT INTO products (name, price, category_id)
VALUES ('Ferrari 488', 12.50, 2);
INSERT INTO products (name, price, category_id)
VALUES ('PuzzleToy', 12.50, 3);



INSERT INTO warehouses (address)
VALUES ('bul. Pernik 14');
INSERT INTO warehouses (address)
VALUES ('bul. Mishka 11');
INSERT INTO warehouses (address)
VALUES ('bul. Makedonia 12');



INSERT INTO orders (address, order_date, status_id, user_id)
VALUES ('bul. Neznam 14', '2021-02-26', 1, 1);
INSERT INTO orders (address, order_date, status_id, user_id)
VALUES ('bul. Zabravih 11', '2021-02-26', 2, 2);
INSERT INTO orders (address, order_date, status_id, user_id)
VALUES ('bul. Surbia 12', '2021-02-26', 3, 3);



INSERT INTO users_shops (salary, shop_id, user_id)
VALUES (12.60, 1, 2);
INSERT INTO users_shops (salary, shop_id, user_id)
VALUES (10.50, 2, 1);
INSERT INTO users_shops (salary, shop_id, user_id)
VALUES (3.50, 1, 3);
INSERT INTO users_shops (salary, shop_id, user_id)
VALUES (5.50, 1, 5);



INSERT INTO products_shops (quantity, product_id, shop_id)
VALUES (2, 1, 1);
INSERT INTO products_shops (quantity, product_id, shop_id)
VALUES (4, 2, 1);
INSERT INTO products_shops (quantity, product_id, shop_id)
VALUES (47, 3, 1);
INSERT INTO products_shops (quantity, product_id, shop_id)
VALUES (500, 3, 2);


INSERT INTO product_warehouse (quantity, product_id, warehouse_id)
VALUES (40000, 1, 1);
INSERT INTO product_warehouse (quantity, product_id, warehouse_id)
VALUES (1000000, 2, 1);
INSERT INTO product_warehouse (quantity, product_id, warehouse_id)
VALUES (500, 3, 1);


INSERT INTO order_details (price, quantity, order_id, product_id)
VALUES (99.90, 2, 1, 1);
INSERT INTO order_details (price, quantity, order_id, product_id)
VALUES (20.00, 5, 1, 3);
INSERT INTO order_details (price, quantity, order_id, product_id)
VALUES (50.20, 10, 2, 2);
