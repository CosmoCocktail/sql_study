#DCL _ 권한 부여 모드
#MYSQL 프로그램 설치 > 가입 > 로그인
# CMD > WORKBench 쿼리문을 작성 조회, 사용
# 버전확인이 안되었을 경우_ 변수 > 시스템 환경변수 > 고급탭 선택

#CMD > MySQL Shell > DCL 문법을 사용할 수 있는 권한

#로컬(내 컴퓨터)에서만 접속가능한 사용자
CREATE USER 'david'@'localhost' IDENTIFIED BY '1234'; 
# 내부적으로 사용하는(로컬호스트) 내에서 

CREATE USER 'davidGlobal'@'%' IDENTIFIED BY '1234';
# 가상의 클라우드 환경에서 외부에서도 들어올 수 있게 하기 위한 경우// 사용에 유의해야 함.


# 클라우드 컴퓨팅
# 과거 > 어떤 사이트 접속 : 반드시 서버 개념 // 서버실
# 서버 > 취급하는 데이터 접속량 > 사이즈(공간)

USE student_db;

#railway = cloud server 지원해주는사이트

SELECT host, user FROM mysql.user;
# 내 로컬 컴퓨터에서 사용가능한 호스트를 조회하는 명령어

SET PASSWORD FOR 'david'@'localhost' = '12345';

DROP USER 'david'@'localhost';

SHOW GRANTS FOR 'davidGlobal'@'%';
#권한을 부여/획득/GRANT USAGE ON *.* TO `davidGlobal`@`%`/ 무언가를 사용할 수 있는 권한을 부여 받았다.
#*.* 모든 권한을 받음 

GRANT SELECT ON student_db.students TO 'davidGlobal'@'%';
# 해당 요소가 모든 권한을 가지고 있지 않은 경우에 특정 권한만 허용하고자 할 때 사용
# GRANT INSERT, SELECT, UPDATE ON DB이름.테이블이름 TO 'userid'@'host';

# GRANT ALL ON DB이름.* TO 'userid'@'host'; _ 특정 DB안에 있는 모든 권한을 주겠다.

GRANT ALL ON *.* TO 'davidGlobal'@'%';


REVOKE SELECT ON student_db.students
FROM 'davidGlobal'@'%';
# 유저의 호스트의 권한을 회수

REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'davidGlobal'@'%';
# 사용자에 대한 계정은 유지하나 사용자에게 주었던 모든 권한 회수

# SQL 기본 개념 // 기본 문법
# Sakila
# 실제 사이트에서 데이터를 수집 + MySQL 저장

