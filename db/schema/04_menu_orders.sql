DROP TABLE IF EXISTS menu_orders CASCADE;
CREATE TABLE menu_orders (
  id SERIAL PRIMARY KEY NOT NULL,
  order_id INTEGER REFERENCES orders(id) ON DELETE CASCADE,
  menu_id INTEGER REFERENCES menu(id) ON DELETE CASCADE,
  order_date DATE NOT NULL,
  total_price INTEGER NOT NULL,
  quantity INTEGER NOT NULL
);