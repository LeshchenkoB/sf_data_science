create database homework_2;

create table customer (
  customer_id int primary key
  ,first_name varchar
  ,last_name varchar
  ,gender varchar
  ,DOB date
  ,job_title varchar
  ,job_industry_category varchar
  ,wealth_segment varchar
  ,deceased_indicator varchar
  ,owns_car varchar
  ,address varchar
  ,postcode int
  ,state varchar
  ,property_valuation int
);

create table transaction (
  transaction_id int primary key
  ,product_id int
  ,customer_id int
  ,transaction_date date
  ,online_order varchar
  ,order_status varchar
  ,brand varchar
  ,product_line varchar
  ,product_class varchar
  ,product_size varchar
  ,list_price float8
  ,standard_cost float8
);