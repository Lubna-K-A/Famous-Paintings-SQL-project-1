

-- 1) Fetch all the paintings which are not displayed on any museums?

select * 
from work
where museum_id = 'null';


-- 2) Are there museuems without any paintings?

select * from museum m
	where not exists (select 1 from work w
					 where w.museum_id=m.museum_id);
                     
SELECT *
FROM museum m
LEFT JOIN work w ON m.museum_id = w.museum_id
WHERE w.museum_id IS NULL;


-- 3) How many paintings have an asking price of more than their regular price? 

select *
from product_size
where sale_price > regular_price;


-- 4) Identify the paintings whose asking price is less than 50% of its regular price

SELECT *
FROM product_size
WHERE sale_price < (0.5 * regular_price);


-- 5) Which canva size costs the most?

select C.label as canva, 
       P.sale_price
from (select *, 
             rank() over(order by sale_price desc) as rnk 
	  from product_size) P
join canvas_size C on C.size_id
where P.rnk=1;


-- 6) identify duplicate records from work, product_size and subject tables

SELECT work_id, name, artist_id, style, museum_id, COUNT(*) AS duplicate_count
FROM work
GROUP BY work_id, name, artist_id, style, museum_id
HAVING COUNT(*) > 1;

select work_id,
       subject,
       count(*) as duplicate_count
from subjects
group by work_id,subject
having count(*) > 1;

select work_id,
       size_id,
       sale_price,
       regular_price,
       count(*) as duplicate_count
from product_size
group by work_id,size_id,sale_price,regular_price
having count(*) > 1;



-- 7) Identify the museums with invalid city information in the given dataset

select museum_id,city
from museum
where city REGEXP '^[0-9]';

-- 8) Fetch the top 10 most famous painting subject

select count(*) as count,
	   subject,
       dense_rank() over(order by count(*) desc) as ranking
from subjects
group by subject
limit 10;


-- 8) Identify the museums which are open on both Sunday and Monday. 
-- Display museum name, city.

select distinct m.name as museum_name, 
	   m.city
from museum_hours MH
join museum m on m.museum_id=MH.museum_id
where day='Sunday'
and exists (select 1 from museum_hours mh2 
			where mh2.museum_id=MH.museum_id 
			and mh2.day='Monday');
            
 
-- 10)How many museums are open every single day?

SELECT COUNT(museum_id) as number_of_museums_open_every_day
FROM (
    SELECT museum_id, COUNT(DISTINCT day) as days_open
    FROM museum_hours
    GROUP BY museum_id
    HAVING days_open = 7
) x;


-- 11) Which are the top 5 most popular museum? 
-- (Popularity is defined based on most no of paintings in a museum)

select m.name as museum, m.city,m.country,x.no_of_painintgs
	from (	select m.museum_id, count(1) as no_of_painintgs
			, rank() over(order by count(1) desc) as rnk
			from work w
			join museum m on m.museum_id=w.museum_id
			group by m.museum_id) x
	join museum m on m.museum_id=x.museum_id
	where x.rnk<=5;
 
    
-- 12) Who are the top 5 most popular artist? (Popularity is defined based on most no of paintings done by an artist)

select a.full_name as artist, a.nationality,x.no_of_painintgs
	from (	select a.artist_id, count(1) as no_of_painintgs
			, rank() over(order by count(1) desc) as rnk
			from work w
			join artist a on a.artist_id=w.artist_id
			group by a.artist_id) x
	join artist a on a.artist_id=x.artist_id
	where x.rnk<=5;

-- 13) Display the 3 least popular canva sizes

SELECT label, ranking, no_of_paintings
FROM (
    SELECT cs.size_id, cs.label, COUNT(1) AS no_of_paintings,
           DENSE_RANK() OVER (ORDER BY COUNT(1)) AS ranking
    FROM work w
    JOIN product_size ps ON ps.work_id = w.work_id
    JOIN canvas_size cs ON CAST(cs.size_id AS CHAR) = ps.size_id
    GROUP BY cs.size_id, cs.label
) x
WHERE x.ranking <= 3;


-- 14) Which museum is open for the longest during a day. 
-- Dispay museum name, state and hours open and which day?

SELECT museum_name, city AS state, day, open, close, duration
FROM (
    SELECT m.name AS museum_name, m.state AS city, day, open, close,
           TIME_FORMAT(STR_TO_DATE(open, '%h:%i %p'), '%h:%i %p') AS open_time,
           TIME_FORMAT(STR_TO_DATE(close, '%h:%i %p'), '%h:%i %p') AS close_time,
           TIMEDIFF(TIME_FORMAT(STR_TO_DATE(close, '%h:%i %p'), '%H:%i'), TIME_FORMAT(STR_TO_DATE(open, '%h:%i %p'), '%H:%i')) AS duration,
           RANK() OVER (ORDER BY TIMEDIFF(TIME_FORMAT(STR_TO_DATE(close, '%h:%i %p'), '%H:%i'), TIME_FORMAT(STR_TO_DATE(open, '%h:%i %p'), '%H:%i')) DESC) AS rnk
    FROM museum_hours mh
    JOIN museum m ON m.museum_id = mh.museum_id
) x
WHERE x.rnk = 1;

-- 15) Which museum has the most no of most popular painting style?

with pop_style as 
			(select style
			,rank() over(order by count(1) desc) as rnk
			from work
			group by style),
		cte as
			(select w.museum_id,m.name as museum_name,ps.style, count(1) as no_of_paintings
			,rank() over(order by count(1) desc) as rnk
			from work w
			join museum m on m.museum_id=w.museum_id
			join pop_style ps on ps.style = w.style
			where w.museum_id is not null
			and ps.rnk=1
			group by w.museum_id, m.name,ps.style)
	select museum_name,style,no_of_paintings
	from cte 
	where rnk=1;
    

-- 16) Identify the artists whose paintings are displayed in multiple countries
	with cte as
		(select distinct a.full_name as artist, 
        w.name as painting, 
        m.name as museum, 
        m.country
		from work w
		join artist a on a.artist_id=w.artist_id
		join museum m on m.museum_id=w.museum_id)
	select artist,count(1) as no_of_countries
	from cte
	group by artist
	having count(1)>1
	order by 2 desc;


 
-- 17)Display the country and the city with most no of museums. Output 2 seperate columns to mention the city and country. If there are multiple value, seperate them with comma.
	
WITH cte_country AS (
    SELECT country, COUNT(1) AS museum_count,
           RANK() OVER (ORDER BY COUNT(1) DESC) AS rnk
    FROM museum
    GROUP BY country
),
cte_city AS (
    SELECT city, COUNT(1) AS museum_count,
           RANK() OVER (ORDER BY COUNT(1) DESC) AS rnk
    FROM museum
    GROUP BY city
)

SELECT GROUP_CONCAT(DISTINCT country.country SEPARATOR ', ') AS country_with_most_museums,
       GROUP_CONCAT(DISTINCT city.city SEPARATOR ', ') AS city_with_most_museums
FROM cte_country country
CROSS JOIN cte_city city
WHERE country.rnk = 1
  AND city.rnk = 1;

-- 18) Which artist has the most no of Portraits paintings outside USA?. Display artist name, no of paintings and the artist nationality.

 select full_name as artist_name, nationality, no_of_paintings
	from (
		select a.full_name, a.nationality
		,count(1) as no_of_paintings
		,rank() over(order by count(1) desc) as rnk
		from work w
		join artist a on a.artist_id=w.artist_id
		join subjects s on s.work_id=w.work_id
		join museum m on m.museum_id=w.museum_id
		where s.subject='Portraits'
		and m.country != 'USA'
		group by a.full_name, a.nationality) x
	where rnk=1;	



-- 19)	21) Which are the 3 most popular and 3 least popular painting styles?

with cte as 
		(select style, count(1) as cnt
		, rank() over(order by count(1) desc) rnk
		, count(1) over() as no_of_records
		from work
		where style is not null
		group by style)
	select style
	, case when rnk <=3 then 'Most Popular' else 'Least Popular' end as remarks 
	from cte
	where rnk <=3
	or rnk > no_of_records - 3;


-- 20)Which country has the 5th highest no of paintings?

with cte as 
		(select m.country, count(1) as no_of_Paintings
		, rank() over(order by count(1) desc) as rnk
		from work w
		join museum m on m.museum_id=w.museum_id
		group by m.country)
	select country, no_of_Paintings
	from cte 
	where rnk=5;

