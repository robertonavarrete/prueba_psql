----------¿Que cliente realizó la compra más cara?
select c.name
from customers as c
inner join bills as b
ON c.customer_id=b.customer_id
where b.bill_number IN (
select bills_subtotals.bill_number
from (
select bd.bill_number,SUM(p.unit_price*bd.quantity) as net_subtotals
from bills_details as bd
inner join products as p
ON bd.product_id=p.product_id
group by bill_number) as bills_subtotals
where net_subtotals IN (select MAX(net_subtotals)
from (
select bd.bill_number,SUM(p.unit_price*bd.quantity) as net_subtotals
from bills_details as bd
inner join products as p
ON bd.product_id=p.product_id
group by bill_number) as bills_subtotals));

--con la opcion fácil de ir al campo de subtotales de factura
select c.name
from customers as c
inner join bills as b
ON c.customer_id=b.customer_id
where b.subtotal IN (select MAX(i.subtotal)
from bills as i);