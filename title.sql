CREATE TABLE title(
    worker_ref_id BIGSERIAL NOT NULL PRIMARY KEY,
    worker_title VARCHAR(50) NOT NULL,
    affected_from DATE NOT NULL
);

INSERT INTO title (worker_ref_id, worker_title, affected_from)
VALUES 
    (1, 'Manager', '2019-06-08'),
    (2, 'Executive', '2019-06-02'),
    (8, 'Executive', '2019-06-03'),
    (5, 'Manager', '2019-06-08'),
    (4, 'Asst. Manager', '2019-06-02'),
    (7, 'Executive', '2019-06-03');