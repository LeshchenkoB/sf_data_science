create database homework_1;

create table dim_brand (
  id SERIAL PRIMARY KEY
  ,name varchar not null
);

create table dim_product_line (
  id SERIAL PRIMARY KEY
  ,name varchar not null
);

create table dim_product_class (
  id SERIAL PRIMARY KEY
  ,name varchar not null
);

create Table dim_product (
  id SERIAL PRIMARY KEY
  ,name varchar not null
  ,brand_id int not null references dim_brand(id)  -- Внешний ключ FOREIGN KEY
  ,product_line_id int not null references dim_product_line(id)  -- Внешний ключ FOREIGN KEY
  ,product_class_id int not null references dim_product_class(id)  -- Внешний ключ FOREIGN KEY
);

create table transaction (
  id SERIAL PRIMARY KEY
  ,product_id int not null 
  ,customer_id int not null
  ,transaction_date date not null
  ,online_order bool not null
  ,order_status_id int not null
  ,product_size_id int not null
  ,list_price float8 not null
  ,standard_cost float8 not null
);

