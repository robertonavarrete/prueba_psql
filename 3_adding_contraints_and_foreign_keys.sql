BEGIN;

ALTER TABLE bills ADD FOREIGN KEY (customer_id) REFERENCES customers (customer_id);
ALTER TABLE products ADD FOREIGN KEY (category_id) REFERENCES categories (category_id);


ALTER TABLE bills ADD CONSTRAINT always_customer CHECK(customer_id IS NOT NULL);
ALTER TABLE customers ADD CONSTRAINT always_a_name CHECK(name IS NOT NULL);
ALTER TABLE products ADD CONSTRAINT never_free CHECK (unit_price > 0);

COMMIT;