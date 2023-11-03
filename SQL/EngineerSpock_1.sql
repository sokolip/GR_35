select product_name, suppliers.company_name, unit_in_stock
from products
join suppliers jn products.supplier_id = suppliers.supplier_id
order by units_in_stock desc;

select category_name, sum(unit_in_stock)
from products
join categoriees on products.category_id = categories.category_id
group by category_name
order by sum(units_in_stock) desc 
limit 5;


select category_name, sum(unit_price * units_in_stock)
from products
join categories on products.category_id = categories.category_id
where discontinued <> 1
group by category_name
having sum(unit_price * units_in_stock) >5000
order by sum(unit_price * units_in_stock) desc;

select order_date, product_name, ship_country, product.unit_price, quantity
from orders
join order_details on orders.order_id = order_details.order_id
join products on order_details.product_id = products.product_id;


