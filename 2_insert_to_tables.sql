BEGIN;
INSERT INTO products(product_id,category_id,name,description,unit_price) VALUES
(1,1,'Cloro LIMPIATODO','formato botella 5 litros',2500),
(2,1,'Desinfectante LIMPIATODO','formato 3 litros',1800),
(3,1,'Limpiapisos LIMPIATODO','formato 3 litros',3290),
(4,3,'Cemento MELON','Bolsa de 10 kilos',9700),
(5,2,'Interruptor KZY','ancho de 5 pulgadas',500),
(6,2,'Switch iTRAIN','15W de 3 entradas',1900),
(7,3,'Adhesivo pared','balde de 5 kilos',7000),
(8,3,'Pasta muro','balde de 5 kilos',11900)

INSERT INTO customers(customer_id,name,rut,address) VALUES
(100001,'Jean Paul','141232341','Calle street 12'),
(100002,'Miguel Angel','120001237','San valentin 234'),
(100003,'Leonardo Da Vinci','119802345','Las camelias 87'),
(100004,'Walter White','176925719','Iluminadas 7827'),
(100005,'Tony Stark','105609367','Diagonal Oriente 23')

INSERT INTO categories(category_id,name,description) VALUES
(1,	'Aseo', 'Utilizados para aseo industrial'),	
(2,	'Electrónica', 'Insumo para instalaciones electricas'),
(3,	'Construccion',	'Materiales varios')

INSERT INTO bills(bill_number, customer_id, bill_date, subtotal) VALUES
(1,100001,'2019-10-02',7000),
(2,100001,'2019-10-04',45250),
(3,100002,'2019-10-05',47700),
(4,100004,'2019-10-05',5800),
(5,100003,'2019-10-05',9700),
(6,100002,'2019-10-07',37200),
(7,100004,'2019-10-07'.33900),
(8,100004,'2019-10-10',106480),
(9,100002,'2019-10-10',34500),
(10,100004,'2019-10-15',9700);


INSERT INTO bills_details(bill_number,product_id,quantity) VALUES
(1,1,2),
(1,5,4),
(2,1,2),
(2,8,2),
(2,3,5),
(3,6,5),
(3,8,3),
(3,1,1),
(4,5,4),
(4,6,2),
(5,4,1),
(6,5,3),
(6,8,3),
(7,5,2),
(7,7,3),
(7,8,1),
(8,2,3),
(8,8,5),
(8,7,5),
(8,3,2),
(9,1,3),
(9,4,2),
(9,6,4),
(10,4,1);

COMMIT;