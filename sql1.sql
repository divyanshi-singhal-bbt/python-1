CREATE DATABASE e_commerce;
USE e_commerce;

CREATE TABLE user_data (
  id INT4 PRIMARY KEY,
  user_name VARCHAR(100) ,
  email VARCHAR(255),
  user_password VARCHAR(255),
  otp INT
  );

select * from user_data;

create table order_table(
id INT4 primary key,
catogory varchar(100),
product_name varchar(100),
user_id int ,
 constraint fk_order foreign key (user_id) references user_data(id)
);



create table payment_sys(
id INT4 PRIMARY KEY,
order_id int  ,
foreign key(order_id) references order_table(id),
amount int4,
txn_number int4
);


insert into user_data (id, user_name, email,user_password ,otp)
values (101,'divyanshi','divyanshi@gmail.com','123',120),
(102,'ansh','ansh@gmail.com','456',121),
(103,'rahul','rahul@gmail.com','789',122),
(104,'shweta','shweta@gmail.com','987',123),
(105,'angel','angel@gmail.com','654',124);

select*from user_data;

INSERT INTO order_table (id, user_id, catogory, product_name)
VALUES 
    (1,101, 'Electronics', 'Laptop'),
    (2,102, 'Books', 'SQL Guide'),
    (3,103, 'Fashion', 'Sneakers'),
    (4,104, 'Home', 'Coffee Maker'),
    (5,105, 'Electronics', 'Smartphone');
    
select * from order_table;

INSERT INTO  payment_sys(id, order_id, amount, txn_number)
VALUES 
    (501,1, 55000, 9981),
    (502,2, 1200, 9982),
    (503,3, 4500, 9983),
    (504,4, 3000, 9984),
    (505,5, 25000, 9985);

select*from payment_sys;

DELETE FROM payment_sys
WHERE id = 501;

select * from payment_sys;

CREATE TABLE category (
    id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO category (id, category_name)
VALUES 
     (1, 'Electronics'),
     (2, 'Books'),
     (3, 'Fashion'),
     (4, 'Home'),
     (5, 'Woods');

select * from category;


alter table order_table
add column category_id INT;

alter table  order_table
add foreign key (category_id) references category(id);

alter table order_table
drop column catogory;

SELECT * FROM order_table;