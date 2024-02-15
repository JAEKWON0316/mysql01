show databases;
use world;
show tables;
desc city;
select * from city where countrycode ='KOR';
select * from city where population >= 5000000;
select * from city where countrycode = 'kor' and population >= 1000000;
#city테이블에서 id,name,countrycode를 검색한다 그리고 조건으로 name이 seoul인것을 검색


