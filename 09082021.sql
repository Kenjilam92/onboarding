-- Write an SQL Script to Seed Sample Data (attached below) and answer the below queries:

create table worker (
    primary key worker_id serial unique,
    first_name varchar(50),
    last_name varchar(50),
    salary integer,
    joining_date timestamp,
    department varchar(10)
);

create table bonus (
    worker_ref_id integer,
    bonus_date timestamp,
    amount integer,
    constraint fk_worker
        foreign key(worker_ref_id)
            references worker(id)
);

create table title (
    worker_ref_id integer,
    title varchar(50),
    affected_from timestamp,
    constraint fk_worker
        foreign key(worker_ref_id)
            references worker(id)
);

-- a) Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000
SELECT FIRST_NAME, LAST_NAME FROM WORKER WHERE SALARY BETWEEN 50000 AND 100000;

-- b) Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT COUNT(WORKER_ID), DEPARTMENT FROM WORKER GROUP BY DEPARTMENT DESC;

-- c) Write an SQL query to fetch intersecting records of two tables.
SELECT * FROM WORKER INNER JOIN BONUS ON WORKER_ID = WORKER_REF_ID;

--d) Write an SQL query to determine the 5th highest salary without using TOP or limit method.

SELECT * FROM (
 SELECT *, ROW_NUMBER() OVER( ORDER BY SALARY ASC) AS RN FROM WORKER  
)t 
WHERE RN <= 5;

