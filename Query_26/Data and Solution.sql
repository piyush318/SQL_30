-- Data

drop table if exists tokens;
create table tokens
(
	token_num	int,
	customer	varchar(20)
);
insert into tokens values(1, 'Maryam');
insert into tokens values(2, 'Rocky');
insert into tokens values(3, 'John');
insert into tokens values(3, 'John');
insert into tokens values(2, 'Arya');
insert into tokens values(1, 'Pascal');
insert into tokens values(9, 'Kate');
insert into tokens values(9, 'Ibrahim');
insert into tokens values(8, 'Lilly');
insert into tokens values(8, 'Lilly');
insert into tokens values(5, 'Shane');

select * from tokens;

-- Solution 1 (With out customer name)
with x as (select token_num,count(distinct customer) as unique_name from tokens
group by token_num)

select top 1 token_num from x
where unique_name = 1 
order by token_num;

-- solution 2 (with customer name)
select top 1 token_num,customer from tokens
group by token_num,customer
having count(*) > 1
order by token_num;







