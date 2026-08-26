SELECT BOOK_ID, to_char(PUBLISHED_DATE, 'YYYY-MM-DD')
from book
where substr(to_char(PUBLISHED_DATE, 'YYYY-MM-DD'), 1, 4)='2021'
and CATEGORY='인문'
order by PUBLISHED_DATE
