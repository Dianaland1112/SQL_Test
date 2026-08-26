2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 
저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.


-- 오라클 날짜 비교: 문자열로 변환 후 비교해야 함 
-- 형태를 SALES_DATE에 맞춰야하므로 to_date() 써야 함 

SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, SUM(b.PRICE*s.SALES) as TOTAL_SALES
from BOOK b 
join AUTHOR a on b.AUTHOR_ID=a.AUTHOR_ID
join BOOK_SALES s on b.BOOK_ID=s.BOOK_ID
where s.SALES_DATE between to_date('2022-01-01', 'YYYY-MM-DD') and to_date('2022-01-31', 'YYYY-MM-DD')
group by a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY     
order by a.AUTHOR_ID, b.CATEGORY desc;
