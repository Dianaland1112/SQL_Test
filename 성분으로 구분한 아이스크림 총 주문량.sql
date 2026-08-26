상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량을 총주문량이 
작은 순서대로 조회하는 SQL 문을 작성해주세요. 
이때 총주문량을 나타내는 컬럼명은 TOTAL_ORDER로 지정해주세요.

SELECT i.INGREDIENT_TYPE, SUM(h.TOTAL_ORDER) as TOTAL_ORDER
from FIRST_HALF h 
JOIN ICECREAM_INFO i on h.FLAVOR=i.FLAVOR
group by i.INGREDIENT_TYPE
order by SUM(h.TOTAL_ORDER);
