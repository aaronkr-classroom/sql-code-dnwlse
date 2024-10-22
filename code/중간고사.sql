CREATE TABLE course (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    teacher_id INT
);

INSERT INTO course (id, name, teacher_id) VALUES
(1, 'Database design', 1),
(2, 'English literature', 2),
(3, 'Python programming', 1);

CREATE TABLE teacher (
    id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

INSERT INTO teacher (id, first_name, last_name) VALUES
(1, 'Taylah', 'Booker'),
(2, 'Sarah-Louise', 'Blake');

CREATE TABLE student (
    id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

INSERT INTO student (id, first_name, last_name) VALUES
(1, 'Shreya', 'Bain'),
(2, 'Rianna', 'Foster'),
(3, 'Yosef', 'Naylor');

CREATE TABLE student_course (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id)
);

INSERT INTO student_course (student_id, course_id) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1);



-- 2번

SELECT 
    s.id AS student_id,
    s.first_name AS student_first_name,
    s.last_name AS student_last_name,
    c.id AS course_id,
    c.name AS course_name,
    t.first_name AS teacher_first_name,
    t.last_name AS teacher_last_name
FROM 
    student_course sc
JOIN student s ON s.id = sc.student_id
JOIN course c ON c.id = sc.course_id
JOIN teacher t ON t.id = c.teacher_id;

--3번

SELECT 
    s.first_name,
    s.last_name
FROM 
    student s
JOIN student_course sc ON s.id = sc.student_id
JOIN course c ON sc.course_id = c.id
WHERE 
    c.name = 'Database design';

SELECT 
    c.name AS course_name
FROM 
    course c
JOIN teacher t ON c.teacher_id = t.id
WHERE 
    t.first_name = 'Taylah'
    AND t.last_name = 'Booker';

SELECT 
    'Student' AS role,
    s.first_name,
    s.last_name
FROM 
    student s
WHERE 
    s.last_name LIKE 'B%'

UNION

SELECT 
    'Teacher' AS role,
    t.first_name,
    t.last_name
FROM 
    teacher t
WHERE 
    t.last_name LIKE 'B%';



