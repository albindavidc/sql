CREATE TABLE employee_info(
    emp_id BIGSERIAL NOT NULL PRIMARY KEY,
    emp_f_name VARCHAR(50) NOT NULL,
    emp_l_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary NUMERIC(19,2) NOT NULL
);

INSERT INTO employee_info(emp_f_name, emp_l_name, department, salary)
VALUES
    ('Karan', 'mehra', 'HR', 300000),
    ('Rohit', 'Sharma', 'Admin', 75000),
    ('Ankush', 'Rajput', 'Account', 60000),
    ('Priyadarshini', 'Sharma', 'HR', 500000),
    ('Sanket', 'Gupta', 'Developer', 100000),
    ('Shruthi', 'Varyar', 'Admin', 80000),
    ('Rohit', 'Sharma', 'Admin', 75000);