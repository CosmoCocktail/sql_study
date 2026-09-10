DROP DATABASE student_db;

DELETE FROM students; # DB는 두고 students 라는 테이블만 삭제

DELETE FROM students WHERE name = "David"; # ctrl z가 되지 않는 함부로 할 수 없게끔 안전 장치가 걸려 있음

#Error Code: 1175. 
#You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column. 
#To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

TRUNCATE TABLE students;
#기존 테이블 구조는 유지하면서 값만 제거