# bit, bytes

# bit = 컴퓨터 취급 최소한의 연산처리 단위 = 0,1
# byte = bit 8 = 1 byte = 2^8 = 256 
# https://dev.mysql.com/doc/refman/9.7/en/integer-types.html
# INT는 4 바이트 기준
# VARCHAR_ 바 캐릭터/ 예측불가한 긴 문자열/ 사용자의 리뷰가 긴게 대부분 / 텍스트 타입을 쓰게 되면 인덱스 설정에 제한이 됨. 

CREATE TABLE mytable (
	id INT UNSIGNED #부호를 사용 x, 음의 정수 영역 x -> 양의 정수
);

CREATE DATABASE IF NOT EXISTS customr_db;
SHOW DATABASES;
USE customr_db;

#Null = 결측값
# 0, not, none => 값이 결여되어 있는 상태(언제라도 값이 들어올 수 있다는 전제조건)
CREATE TABLE IF NOT EXISTS customr_db(
	no INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    age INT,
    phone VARCHAR(20),
    email VARCHAR(30) NOT NULL,
    address VARCHAR(50)
);
# 컬럼별로 선택적으로 NOT NULL 을 넣을 수 있음

# Table 내 컬럼 속성변경 
ALTER TABLE customr_db MODIFY COLUMN # Modify 수정한다.
name VARCHAR(30) NOT NULL;

# table 내 컬럼명 + 속성변경
ALTER TABLE customer CHANGE COLUMN
name user_name VARCHAR(20) NOT NULL;

# 하나만 바꾸면 됨?
ALTER TABLE customr_db
	CHANGE COLUMN age user_age int , 
	CHANGE COLUMN phone user_phone VARCHAR(30) NOT NULL;

# 동시에 여러 구문을 같이 실행하고자 할 때
# 구문의 가독성을 위해서 들여쓰기를 적절하게 해주면 좋음
AlTER TABLE customer
	MODIFY email VARCHAR(40) NOT NULL,
	CHANGE address user_address VARCHAR(40);

DESC customr_db;