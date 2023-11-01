select product_name, suppliers.company_name, unit_in_stock
from products
join suppliers jn products.supplier_id = suppliers.supplier_id
order by units_in_stock desc;

