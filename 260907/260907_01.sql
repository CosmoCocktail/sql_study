# 주석: 문법 관련 내용, 마케팅 관점
-- 단문 = 한줄 주석


/* 
복문 주석
*/

# MySQL 프로그램 : RDBMS를 지원하기 위해서 만들어진 프로그램
# MongoDB 프로그램 NoSQL을 지원하기 위해서 만들어진 프로그램 (not only SQL)
# DB : Database = 여러 데이터 들이 모여 있는 그룹/ 집합 = 저장소
# Data : 관찰, 측정, 조사를 통해서 수집된 값, 사실, 기록
# Schema : 약속 = 데이터별 특정 요소들을 어떤 제약조건하에 기록, 저장할 것인가 약속
# Table : 공통 주제에 속해 있는 데이터들을 별도로 관리하기 위해서 만들어 놓은 저장단위
# MongoDB 프로그램 NoSQL을 지원하기 위해서 만들어진 프로그램
# DBMS > RDBMS (MySQL) > DB > Table > Schema > Data
# AI Agent & MCP : MySQL > AI // RCTCO : Prompt

# SQL 문법 종류 4가지 분야
# DDL : Data Definition Language : CREATE, DROP, ALTER
# DML : Data Manipulation Language : SELECT, INSERT, UPDATE, DELETE
# DCL : Data Control Language : GRANT, REVOKE
# TCL : Transaction Control Language : 연산처리를 하되 임시 저장 공간에 다가 저장해봐, 거래한다. COMMIT, ROLLBACK, SAVEPOINT_ 현업에서 사용하는 데이터는 이미 원본데이터가 아닌 경우기에 많이 다룰 이유가 없음

# https://db-engines.com/en/ranking   : 오라클이 시장 1등이나 설치 접근성이 높음. SQL은 다 다룸 : 차별화가 되지 않음// MongoDB라는 NOSQL이 차별화가 될 수 있음.(json 기반, 객체에 대한 학습 필요)
# 굳이 거추장스럽게 관계형 데이터 시스템을 사용하지 않고 스타트업에선 mongoDB를 사용함.

# Table : 실제 Data가 저장되어 있는 공간
# 행, 열 구성
# 1개의 행 = 레코드 (Record) = Row = 튜플(Tuple)
# 1개의 열 = 속성(attribute) = column = 하나의 컬럼을 대표하는 컬럼인지를 정의하는 텍스트> Field Name (필드명)
