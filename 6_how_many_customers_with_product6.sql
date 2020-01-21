-----¿Cuantos clientes han comprado el producto 6?

select count (distinct c.name)
from bills_details as bd
inner join bills as b
ON bd.bill_number=b.bill_number
inner join customers as c
ON c.customer_id = b.customer_id
where bd.product_id=6