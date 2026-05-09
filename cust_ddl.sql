CREATE OR REPLACE TABLE RAW_CUSTOMERS_TEST (
    raw_id              INT AUTOINCREMENT,
    customer_id         INT,
    first_name          VARCHAR(100),
    last_name           VARCHAR(100),
    email               VARCHAR(200),
    phone               VARCHAR(30),
    address_line1       VARCHAR(200),
    city                VARCHAR(100),
    state               VARCHAR(50),
    zip_code            VARCHAR(10),
    country             VARCHAR(50),
    signup_date         VARCHAR(30),
    customer_segment    VARCHAR(20),
    ingested_at         TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP(),
    source_system       VARCHAR(50) DEFAULT 'CRM_EXPORT'
);

INSERT INTO ECOMMERCE_DEMO.BRONZE.RAW_CUSTOMERS
    (customer_id, first_name, last_name, email, phone, address_line1, city, state, zip_code, country, signup_date, customer_segment)
VALUES
    (1001, 'Alice',   'Johnson',  'alice.j@email.com',    '555-0101', '123 Main St',      'New York',      'NY', '10001', 'US', '2024-01-15', 'Premium'),
    (1002, 'Bob',     'Smith',    'bob.smith@email.com',  '555-0102', '456 Oak Ave',       'Los Angeles',   'CA', '90001', 'US', '2024-02-20', 'Standard'),
    (1003, 'Carol',   'Williams', 'carol.w@email.com',    '555-0103', '789 Pine Rd',       'Chicago',       'IL', '60601', 'US', '2024-03-10', 'Premium'),
    (1004, 'David',   'Brown',    'david.b@email.com',    '555-0104', '321 Elm Blvd',      'Houston',       'TX', '77001', 'US', '2024-04-05', 'Standard'),
    (1005, 'Eve',     'Davis',    'eve.davis@email.com',  '555-0105', '654 Cedar Ln',      'Phoenix',       'AZ', '85001', 'US', '2024-05-18', 'Premium'),
    (1006, 'Frank',   'Miller',   'frank.m@email.com',    '555-0106', '10 Downing St',     'London',        '',   'SW1A',  'UK', '2024-06-01', 'Standard'),
    (1007, 'Grace',   'Wilson',   'grace.w@email.com',    '555-0107', '88 Rue de Rivoli',  'Paris',         '',   '75001', 'FR', '2024-07-12', 'Premium'),
    (1008, 'Henry',   'Taylor',   'henry.t@email.com',    '555-0108', '22 Market St',      'San Francisco', 'CA', '94105', 'US', '2024-08-25', 'Standard'),
    (1009, 'Ivy',     'Anderson', 'ivy.a@email.com',      '555-0109', '55 King St',        'Sydney',        '',   '2000',  'AU', '2024-09-30', 'Premium'),
    (1010, 'Jack',    'Thomas',   'jack.t@email.com',     '555-0110', '77 Queen St',       'Toronto',       'ON', 'M5H',   'CA', '2024-10-15', 'Standard'),
    (1001, 'Alice',   'Johnson',  'alice.j@email.com',    '555-0101', '123 Main St',       'New York',      'NY', '10001', 'US', '2024-01-15', 'Premium'),
    (1003, 'Carol',   'Williams', 'carol.w@email.com',    '555-0103', '789 Pine Rd',       'Chicago',       'IL', '60601', 'US', '2024-03-10', 'Premium');

