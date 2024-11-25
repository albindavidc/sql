CREATE TABLE bonus (
    worker_ref_id BIGSERIAL NOT NULL PRIMARY KEY,
    bonus_date DATE NOT NULL,
    bonus_amount NUMERIC(19,2) NOT NULL 
);

INSERT INTO bonus(worker_ref_id, bonus_date, bonus_amount) 
VALUES
    (1, '2020-06-02', 5000),
    (2, '2020-06-03', 3000),
    (3, '2020-06-04', 4000),
    (4, '2020-06-05', 4500),
    (5, '2020-06-05', 3500);