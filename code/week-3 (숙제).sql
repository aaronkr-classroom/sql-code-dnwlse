-- CREATE DATABASE dju24;

DROP TABLE teachers;

CREATE TABLE teachers(
	id bigserial,
	first_name varchar(25),
	last_name varchar(50),
	school varchar(50),
	hire_date date,
	salary numeric
);

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('janet', 'smith', 'F.D.Rooservelt H.S.', '2011-10-30', 36200),
		('Lee', 'Reynolds', 'F.D.Rooservelt H.S.', '1993-05-22', 65000),
		('samuel', 'Cole', 'Meyers M.S.', '2005-08-01', 43500);

SELECT * from teachers;

TABLE teachers;

-- week 3 Code --

SELECT last_name, school, salary FROM teachers;

SELECT last_name, school, salary FROM teachers
	ORDER BY salary DESC;

SELECT last_name, school, salary FROM teachers
	ORDER BY 1 ASC;

SELECT DISTINCT school FROM teachers ORDER BY school;

-- WHERE 문

SELECT last_name, school, salary FROM teachers
	ORDER BY salary DESC;

SELECT last_name, school, salary FROM teachers
	WHERE salary >= 40000
	ORDER BY salary DESC;

SELECT last_name, school, salary FROM teachers
	WHERE salary BETWEEN 20000 AND 40000
	ORDER BY salary DESC;

SELECT last_name, school, salary FROM teachers
	WHERE last_name ILIKE 's%' or first_name ILIKE 's%'
	ORDER BY salary DESC;