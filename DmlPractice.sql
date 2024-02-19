use world;
show tables;
#1. city 테이블을 조회
select * from city;
#국가코드가 kor인 도시들의 국가코드를 표시
select * from city where countrycode = 'kor';
# 만든것 delete
delete from city where name = 'testcity';
#국가코드가 kor인 도시들의 국가코드를 중복제거해서 표시하시오. 
select distinct countrycode from city where countrycode = 'kor';
#국가코드가 kor이면서 인구가 100만이상인 도시
select * from city where countrycode = 'kor' and population >= 1000000;
#국가코드 kor, chn, jpn인 도시
select * from city where countrycode = 'kor' or countrycode = 'chn' or countrycode = 'jpn';
#kor가 아니면서 인구가 100만 이상인 도시
select * from city where CountryCode != 'kor' and population >= 1000000;
#국가코드가 kor,chn,jpn인 도시를 검색해라
select countrycode from city where countrycode in('kor', 'chn', 'jpn');
#국가코드가 'kor' 인구가 100만 이상 500만 이하인 도시
select * from city where countrycode = 'kor' and population between 1000000 and 5000000;
#kor인 도시를 찾아 인구수의 역순으로 표시하시오.
select * from city where CountryCode = 'kor' order by population desc;
#city테이블의 국가코드와 인구수를 출력하시오. 
#단 정렬은 국가코드별로 오름차순, 동일한 코드안에서는 인구 수의 역순으로 표시
select countrycode, population from city order by CountryCode, population desc;

select * from city where CountryCode = 'kor';

#국가코드가 'KOR'인 도시들 중 인구수가 많은 순서로 상위 10개만 표시하세요.
select * from city where countrycode = 'kor' order by population desc limit 10, 10;

select count(*) from city where countrycode = 'kor';
#한국 도시 인구수의 총합을 구하시오.
select sum(population) from city where countrycode = 'kor';
#한국 도시 인구수의 평균을 구하시오.
select avg(population) from city where countrycode = 'kor';
#한국 도시 인구수의 최대값을 구하시오.
select min(population) from city where countrycode = 'kor';
#한국 도시 인구수의 최소값을 구하시오.
select max(population) from city where countrycode = 'kor';

#country 테이블을 조회
select * from country;
#country 테이블에서 각 name컬럼의 글자수를 표기하라.
select length(name), name from country;
#country 테이블에서 나라명을 앞 세글자만 대문자로 표기하라.
select upper(mid(name, 1, 3)) from country;
#country 테이블에서 LifeExpectancy(기대수명)을 소수점 첫째자리에서 반올림해서 표기하라.
select round(lifeExpectancy, 0) from country;



