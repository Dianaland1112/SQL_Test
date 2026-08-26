CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 
대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가하여 자동차 ID와 AVAILABILITY 리스트를 출력하는 SQL문을 작성해주세요. 
이때 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시해주시고 결과는 자동차 ID를 기준으로 내림차순 정렬해주세요.

-- 상황에 따른 경우: CASE - WHEN 활용
-- MAX(): 동일 CAR_ID에 대해 두 가지 상태 충돌 방지.
-- 집계 함수와 같이 일반 칼럼을 표시하려면 group by를 사용해야 함

SELECT CAR_ID, MAX(case '2022-10-16' 
                when between START_DATE and END_DATE then '대여중'
                else '대여 가능'
                end) as Availability
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
order by CAR_ID desc;
