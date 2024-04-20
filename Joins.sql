use campusx;
SELECT * FROM campusx.groups;
select * from membership;

-- Cross Join
Select * from membership t1  cross Join campusx.groups t2;

-- Inner Join
Select Count(*) from users;
Select Count(*) from membership;

Select Count(*) from users t1 
join membership t2
on t1.user_id = t2.user_id;

-- Left Join 
-- Left table = 1st table 
-- Right table  =  2nd table

Select * from users t1 left join membership t2 on t1.user_id = t2.user_id;

-- Right Join
Select * from users t1 right join membership t2 on t1.user_id = t2.user_id;

-- Union 
Select * from person1 
union 
Select * from person2;

-- Union All
Select * from person1 
union all
Select * from person2;

-- Intersect
Select * from person1 
intersect 
Select * from person2;

-- except
Select * from person1 
except
Select * from person2;

-- Full outer join
Select * from users t1 left join membership t2 on t1.user_id = t2.user_id
union
Select * from users t1 right join membership t2 on t1.user_id = t2.user_id;

-- Self join 
Select * from `users1` t1
join 
`users1` t2 
on t1.user_id = t2.emergency_contact;

-- joining on more then one cols
select * from students t1
join
class t2 
on 
t1.class_id = t2.class_id
and
t1.enrollment_year = t2.class_year;

-- Join more then two tables
select * from users;
select * from orders;
select * from category;
select * from order_details;


select t3.name,t1.amount,t2.order_date from order_details t1
join orders t2 on t1.order_id = t2.order_id
join users t3 on t2.user_id = t3.user_id 
join category t4 on t1.category_id = t4.category_id
where t4.category = 'Furniture' and t4.vertical = 'Chairs';


 




