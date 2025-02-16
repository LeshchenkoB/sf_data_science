INSERT INTO dim_brand (name) VALUES
('Giant Bicycles'),
('Norco Bicycles'),
('OHM Cycles'),
('Solex'),
('Trek Bicycles'),
('WeareA2B');

INSERT INTO dim_product_line (name) VALUES
('Mountain'),
('Road'),
('Standard'),
('Touring');

INSERT INTO dim_product_class (name) VALUES
('high'),
('low'),
('medium');

INSERT INTO dim_order_status (name) VALUES
('Approved'),
('Cancelled');

INSERT INTO dim_product_size (name) VALUES
('large'),
('medium'),
('small');

INSERT INTO dim_country (name) VALUES
('Australia');

INSERT INTO dim_state (name, country_id) VALUES
('NSW', 1),
('QLD', 1),
('VIC', 1);

INSERT INTO dim_job_industry_category (name) VALUES
('n/a'),
('Argiculture'),
('Entertainment'),
('Financial Services'),
('Health'),
('IT'),
('Manufacturing'),
('Property'),
('Retail'),
('Telecommunications');

INSERT INTO dim_wealth_segment (name) VALUES
('Affluent Customer'),
('High Net Worth'),
('Mass Customer');
