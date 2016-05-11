DROP TABLE pets;
DROP TABLE stores;


CREATE TABLE stores (
  id serial4 primary key,
  name VARCHAR(255)
);

CREATE TABLE pets ( 
  id serial4 primary key,
  name VARCHAR(255),
  store_id INT4 references stores(id)
);