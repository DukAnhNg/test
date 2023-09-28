-- 1
select products.product_id,products.product_name,categories.category_name, products.price from products
join categories
on products.category_id = categories.category_id
join orderdetails
on products.product_id = orderdetails.product_id
where orderdetails.order_detail_id = 1;

-- 2
select sum(products.price), orderdetails.order_detail_id from products
join orderdetails
on products.product_id = orderdetails.product_id
where orderdetails.order_detail_id = 1;

-- 3 
select products.product_id, products.product_name from products
where products.product_id not in ( select product_id from orderdetails);

-- 4
select count(products.category_id) as total_products, categories.category_name from categories, products
where products.category_id = categories.category_id
group by  category_name;

-- 5

-- 6 
select category_name, COUNT(product_id) as product_count from products,categories
group by categories.category_id
order by product_count desc;

-- 7 


-- 8 

-- 9
select customer_id,customer_name,count(order_id) as total_orders from orders
where date(order_date) between A and B 
group by customer_id
having count(order_id) > 1; 
-- 10
