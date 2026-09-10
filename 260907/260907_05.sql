USE sakila;
SHOW TABLES;
SELECT * FROM payment LIMIT 15;
SELECT SUM(amount) FROM payment; # 전체 매출 67406.56// 월 단위로 어떻게 움직였는가

SELECT 
	DATE_FORMAT(payment_date, "%Y-%m") AS payment_month,
	SUM(amount)
FROM payment
GROUP BY payment_month
ORDER BY payment_month
;

#Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', "%Y-%m") AS payment_month,  SUM(amount) FROM payment GROUP BY payment_month' at line 2
# 분석 결과  _ 2005년도 7월 까지 성장후 2005년도 8월에 하락세

SELECT
	customer_id,
	COUNT(*) AS rental_count
FROM rental
GROUP BY custoer_id;

SELECT * FROM payment LIMIT 16;