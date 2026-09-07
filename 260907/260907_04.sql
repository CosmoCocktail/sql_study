# DB -> Table -> Schema -> Modify /Change -> INSERT -> UPDATE
# Data x

CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
	id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, # 조건을 입력하는 항목의 순서는 중요하지 않음. 
    name VARCHAR(30),
    age INT UNSIGNED,
    grade VARCHAR(10)
);

INSERT INTO students VALUES(1, "David",15,"2학년");  # 컬럼의 개수가 반드시 일치해야함.

INSERT INTO students (name, age, grade)
VALUES ("Dave", 16, "3학년");

INSERT INTO students (name, age, grade)
VALUES
	("Jane",14,"1학년"),
    ("Juliet",15,"2학년"),
    ("Romeo","16","3학년")
    ;

#copy response Error Code: 1146. Table 'student_db.student_db' doesn't exist
SELECT * FROM students;

UPDATE students
SET grade = "2학년", age = 15 
WHERE id = 3;

UPDATE students
SET grade = "3학년", age = 16;
# 베타 버전에서만 실행이 가능한 영역 // 구글 포털 > al
#Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

SET SQL_SAFE_UPDATES = 0; # safe update 모드를 끄겠다,
SET SQL_SAFE_UPDATES = 1; # safe update 모드를 키겠다.

UPDATE students
SET grade = "1학년" , age = 14
WHERE grade = "2학년" AND age = 15;

#KEY로서 설정되어진 컬럼을 써야 한다. 단순 조건으로는 바꿀 수 없음// 일괄 변경을 희망할 때 선택적으로 safe update 실행/실행x
#데이터의 ctrl z는 불가능함. 

# 조회하기
# DB -> Table -> Schema -> Modify /Change -> INSERT -> UPDATE -> SELECT

SELECT * FROM students; #* all
SELECT * FROM students WHERE age >= 16; # where = 조건절 
SELECT * FROM students WHERE age <> 15;
# 조건절 : 비교연산자 & 논리연산자
# 비교연산자 : =(전통적인 프로그래밍 언어와 다름- 단순 같다) >= <= > < 부정연산자(!= , <>)
# 1 == "1" // 1 === "1"

SELECT * FROM students WHERE NOT age = 16;
# NOT -> 연산자 x 예약어 > 논리 부정 키워드  #예약어(Reserved Word)란 컴퓨터 프로그래밍 언어에서 문법적인 용도로 이미 사용하기로 약속되어 있어, 프로그래머가 변수명이나 함수명 같은 식별자로 사용할 수 없는 단어
# 단순 부정 연산을 위한 목적보다, NULL의 연산처리를 위한 목적
# IS NOT NULL _ NULL을 유일하게 잡을 수 있는 연산자 WHERE NOT이 원조이고 관례상 IS NOT NULL이 사용됨

SELECT * FROM students WHERE age IS NOT NULL;
SELECT * FROM students WHERE age <> NULL; #사용할 수 없는 구문

SELECT * FROM students
WHERE (age > 15 AND grade = "3학년") OR grade = "1학년";
#AND : 좌항 AND 우항 -> 좌항도 TRUE / 우항도 TRUE
#AND, OR의 우선순위를 어떻게 따질 것이냐? 우선연산의 순서를 두는 것

SELECT * FROM students
WHERE name = "David";

SELECT * FROM students
WHERE name LIKE "D%"; # % => 0개 혹은 그 이상의 존재 정의 = 1개 정의

SELECT * FROM students
WHERE name LIKE "%D%";
