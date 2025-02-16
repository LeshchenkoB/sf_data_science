create database homework_1;

create table dim_brand (
  id serial primary key
  ,name varchar not null
);

create table dim_product_line (
  id serial primary key
  ,name varchar not null
);

create table dim_product_class (
  id serial primary key
  ,name varchar not null
);

create table dim_product (
  id serial primary key
  ,name varchar not null
  ,brand_id int not null references dim_brand(id)  -- Внешний ключ FOREIGN KEY
  ,product_line_id int not null references dim_product_line(id)  -- Внешний ключ FOREIGN KEY
  ,product_class_id int not null references dim_product_class(id)  -- Внешний ключ FOREIGN KEY
);

create table dim_order_status (
  id serial primary key
  ,name varchar not null
);

create table dim_product_size (
  id serial primary key
  ,name varchar not null
);

create table dim_country  (
  id serial primary key
  ,name varchar not null
);

create table dim_state   (
  id serial primary key
  ,name varchar not null
  ,country_id int not null references dim_country(id)  -- Внешний ключ FOREIGN KEY
);

create table dim_job_industry_category  (
  id serial primary key
  ,name varchar not null
);

create table dim_wealth_segment  (
  id serial primary key
  ,name varchar not null
);

create table customer (
  id int primary key
  ,first_name varchar not null
  ,last_name varchar
  ,gender varchar not null check (gender in ('F', 'M'))
  ,DOB date
  ,job_title varchar
  ,job_industry_category_id int references dim_job_industry_category(id)  -- Внешний ключ FOREIGN KEY
  ,wealth_segment_id int references dim_wealth_segment(id)  -- Внешний ключ FOREIGN KEY
  ,deceased_indicator varchar not null check (deceased_indicator in ('Y', 'N'))
  ,owns_car varchar not null check (owns_car in ('Yes', 'No'))
  ,address varchar
  ,postcode int
  ,state_id int references dim_state(id)  -- Внешний ключ FOREIGN KEY
  ,property_valuation int not null check (property_valuation between 1 and 12)
);

create table transaction (
  id int primary key
  ,product_id int not null references dim_product(id)  -- Внешний ключ FOREIGN KEY
  ,customer_id int not null references customer(id)  -- Внешний ключ FOREIGN KEY
  ,transaction_date date not null
  ,online_order bool not null
  ,order_status_id int not null references dim_order_status(id)  -- Внешний ключ FOREIGN KEY
  ,product_size_id int not null references dim_product_size(id)  -- Внешний ключ FOREIGN KEY
  ,list_price float8 not null
  ,standard_cost float8 not null
);

