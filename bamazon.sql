DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(50) NOT NULL, 
    department_name VARCHAR(30) NOT NULL,
    price INTEGER(10) NOT NULL,
    stock_quantity INTEGER(20) NOT NULL, 
    PRIMARY KEY (id)
    );

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mistborn - Brandon Sanderson", "Books & Audible", 21.93, 34);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Eye of the World - Robert Jordan", "Books & Audible", 25.14, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Dog Training Collar", "Pet Supplies", 39.99, 200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Minecraft Lego Mooshroom", "Toys, Kids & Baby", 11.50, 33);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("1/3ct Diamond Necklace", "Clothing, Shoes & Jewelry", 395.00, 18);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("August Smart Lock", "Smart Home", 229.99, 54);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("KitchenAide Mixer", "Home, Garden & Tools", 279.89, 55);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Olaplex no.5 Bond Maintenance", "Beauty & Health", 28.00, 231);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Dyson Supersonic Hair Dryer", "Beauty & Health", 399.00, 73);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Roblox Six Figure Pack", "Toys, Kids & Baby", 19.95, 88);
