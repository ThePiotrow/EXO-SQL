CREATE TABLE IF NOT EXISTS customer (
  id INT NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(100) NOT NULL,
  phone varchar(20),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS orders (
  id INT NOT NULL,
  customer_id INT NOT NULL,
  order_date DATE NOT NULL,
  status varchar(20) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (customer_id) REFERENCES customer(id)
);

CREATE TABLE IF NOT EXISTS item (
  id INT NOT NULL,
  name varchar(250) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  description varchar(500),
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS order_item (
  order_id INT NOT NULL,
  item_id INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (order_id, item_id),
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (item_id) REFERENCES item(id)
);
