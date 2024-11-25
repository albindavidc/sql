CREATE TABLE employee(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary VARCHAR(50) NOT NULL,
    department_id INT NOT NULL
);

INSERT INTO employee(
    name, salary, department_id
) VALUES 
    ('Joe', 85000, 1),
    ('Henry', 80000, 2),
    ('Sam', 60000, 2),
    ('Max', 90000, 1),
    ('Janet', 69000, 1),
    ('Randy', 85000, 1),
    ('Will', 70000,1);



CREATE TABLE department(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO department(
    name
)VALUES
    ('IT'),
    ('Sales');




WITH RankedSalaries AS(
    SELECT
        dep.name AS Department,
        emp.name AS Employee,
        emp.salary,
        RANK() OVER (PARTITION BY dep.id ORDER BY emp.salary DESC) AS salary_rank
    FROM 
        employee emp
    JOIN 
        department dep ON dep.id = emp.department_id
)
SELECT  
    Department,
    Employee,
    salary
FROM 
    RankedSalaries
WHERE
    salary_rank <= 3
ORDER BY
    Department, salary_rank;