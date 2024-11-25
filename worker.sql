CREATE TABLE worker(
    worker_id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    salary NUMERIC(19,2) NOT NULL,
    joining_date DATE NOT NULL,
    department VARCHAR(50)
);

INSERT INTO worker (first_name, last_name, salary, joining_date, department) 
VALUES 
    ('Monika', 'Arora', 100000, '2019-06-08', 'HR'),
    ('Niharika', 'Verma', 80000, '2019-06-02', 'Admin'),
    ('Vishal', 'Singhal', 3000000, '2019-06-03', 'HR'),
    ('Amithab', 'Singh', 5000000, '2019-06-04', 'Admin'),
    ('Vivek', 'Bhati', 5000000, '2019-06-05', 'Admin'),
    ('Vipul', 'Diwan', 2000000, '2019-06-05', 'Account'),
    ('Satish', 'Kumar', 75000, '2019-06-14', 'Account'),
    ('Deepika', 'Chauhan', 90000, '2019-06-21', 'Admin');
