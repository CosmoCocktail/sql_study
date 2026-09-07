# SQL활용 방식
# 1직접 쿼리문을 작성해서 우리가 DB를 생성하고 DB안에 테이블을 만드는 방법
# 2상단의 요소를 활용해서 하는 모델링_ file_ Open Model

# DB : 데이터를 관리할 수 있는 가장 큰 카테고리
# 왜 굳이 대문자로 하는가? 1) 현업-> 대문자/ 영어 베이스 기반 : 예약어 | 명령어 // 업데이트 : x
# ctrl + enter : 현재 작성한 쿼리문 실행
# 서로 다른 테이블간 어떤 연결 및 관계를 맺도록 할 것인가!! 

CREATE DATABASE dbname;

SHOW DATABASES; # 현재 만들어 놓은 데이터 베이스 조회

USE dbname; # 데이터 베이스 사용

CREATE TABLE mytable (
	id INT,
    name VARCHAR(50), #variable(변수), character_ 50개
    PRIMARY KEY (id)
);
# 프라이머리 키 부여
# 현업스타일 (반복해서 값, 행 x)
CREATE TABLE mytable (
	id INT PRIMARY KEY AUTO_INCREMENT, 
    #AUTO_INCREMENT : 테이블에 새로운 행(레코드)이 추가될 때마다 해당 열의 숫자를 1씩 자동으로 증가시켜 고유한 값을 생성해 주는 기능
    name VARCHAR(50) #variable(변수), character_ 50개
);

#현재 생성된 테이블이 어떤 규칙으로 정의되어 있는가
DESC mytable;

#현재 생성된 테이블 안에서 값 조회
SELECT * FROM mytable;

#데이터 베이스 삭제
DROP DATABASE dbname;

