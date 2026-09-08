USE student_db;
SHOW TABLES;
DESC students;
SELECT * FROM students;

SELECT * FROM students
WHERE name LIKE "_a__"; # 총 4개 문자열

# % :0번 | 1번 이상 // 

SELECT * FROM students
WHERE name LIKE "_____";

# WHERE : 조건절 => 비교 & 논리 연산자
# <> !=
# NOT : 부정연산자이기도 하지만, 단순 부정을 하기보다는 NULL을 잡기 위한 목적(IS NOT NULL)

SELECT * FROM students
WHERE name NOT LIKE "_____"; # 5문자열이 아닌

SET SQL_SAFE_UPDATES = 0;

UPDATE students SET age = 15 , grade = '2학년'
WHERE name = "Jane"; # PK 속성이 적용된 컬럼을 조건으로 사용!alter

SET SQL_SAFE_UPDATES = 1;



