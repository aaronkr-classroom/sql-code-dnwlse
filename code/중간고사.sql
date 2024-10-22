-- 1. 테이블 생성하기
-- 2. 조인문 사용하기
-- 3. SELECT문을 사용하여 데이터 탐색하기 (3개)

CREATE TABLE char_data_types 

SELECT * FROM public.room1

INSERT INTO public.room1(
	"studentID", "studentName")
	VALUES (1, 'Shreya'),
	(2, 'Rianna'),
	(3, 'Yosef');

INSERT INTO public.room1(
	"courseID", "Name")
	VALUES (1, 'Database design'),
	(2, 'English literature'),
	(3, 'Python programming');

INSERT INTO public.room1(
	"teacherID", "teacherName")
	VALUES (1, 'Taylah'),
	(2, 'Sarah-Louise');



	