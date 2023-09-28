use test;

create table  Categories (
category_id int primary key,
category_name varchar(25)
);

insert into test.categories(category_id,category_name)
values(1,'Category 1'),
(2,'Category 2'),
(3,'Category 3'),
(4,'Category 4'),
(5,'Category 5'),
(6,'Category 6'),
(7,'Category 7'),
(8,'Category 8'),
(9,'Category 9'),
(10,'Category 10');


create table Products (
product_id int primary key,
product_name varchar(25),
category_id int,
price int,
foreign key (category_id) references test.categories(category_id)
);

insert into test.products(product_id,product_name,category_id,price)
values(1,'Product 1',2,100000),
(2,'Product 2',1,1200000),
(3,'Product 3',4,160000),
(4,'Product 4',3,400000),
(5,'Product 5',7,10000),
(6,'Product 6',5,990000),
(7,'Product 7',9,500000),
(8,'Product 8',6,800000),
(9,'Product 9',10,1400000),
(10,'Product 10',8,2300000);


create table Customers (
customer_id int primary key,
customer_name varchar(25),
email varchar(25)
);

insert into test.customers(customer_id,customer_name,email)
values(1,'Customer 1','customer1@gmail.com'),
(2,'Customer 2','customer2@gmail.com'),
(3,'Customer 3','customer3@gmail.com'),
(4,'Customer 4','customer4@gmail.com'),
(5,'Customer 5','customer5@gmail.com'),
(6,'Customer 6','customer6@gmail.com'),
(7,'Customer 7','customer7@gmail.com'),
(8,'Customer 8','customer8@gmail.com'),
(9,'Customer 9','customer9@gmail.com'),
(10,'Customer 10','customer10@gmail.com');

create table Orders (
order_id int primary key,
customer_id int,
order_date date,
foreign key (customer_id) references test.customers(customer_id)
);

insert into test.orders(order_id,customer_id,order_date)
values(1,2,'2000-09-20'),
(2,10,'2003-10-31'),
(3,3,'2015-02-03'),
(4,6,'2007-08-31'),
(5,5,'2010-12-01'),
(6,1,'2018-06-19'),
(7,7,'2015-01-10'),
(8,4,'2009-03-18'),
(9,8,'2020-02-28'),
(10,9,'2023-11-30');

create table OrderDetails (
order_detail_id int primary key,
order_id int,
product_id int,
quantity int,
foreign key (order_id) references test.orders(order_id),
foreign key (product_id) references test.products(product_id)
);

insert into test.OrderDetails(order_detail_id,order_id,product_id,quantity)
values(1,9,8,10),
(2,1,2,1),
(3,8,6,3),
(4,2,4,6),
(5,10,10,11),
(6,3,7,2),
(7,6,1,15),
(8,3,3,5),
(9,7,9,6),
(10,5,5,6);



