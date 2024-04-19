use campusx;
-- Sorting Data 
Select * from smartphones_cleaned_v6 where brand_name = 'samsung' order by screen_size desc limit 5;
select * from smartphones_cleaned_v6 order by (num_front_cameras+num_rear_cameras) desc limit 5;
select brand_name,model,round(SQRT(resolution_width*resolution_width + resolution_height*resolution_height)/screen_size,2) as `ppi` from smartphones_cleaned_v6 order by ppi desc limit 5;
select * from smartphones_cleaned_v6 order by battery_capacity desc limit 1,1;
Select * from smartphones_cleaned_v6 where brand_name = 'apple' order by rating asc limit 1;
select brand_name,price from smartphones_cleaned_v6 order by brand_name asc, price desc;

-- Grouping data 
select brand_name,count(*) as 'num_phone', round(avg(price)),max(rating) from 
smartphones_cleaned_v6
 group by brand_name
 order by num_phone
 desc limit 5;
 
select has_nfc,count(*) as "Count of phones", avg(price) as `
Avg Price` from smartphones_cleaned_v6 group by has_nfc;

select brand_name,processor_brand, count(*) as "num phone" from smartphones_cleaned_v6 group by 
brand_name,processor_brand;

Select brand_name, round(avg(price),2) as price from smartphones_cleaned_v6
group by brand_name
order by price desc limit 5;

Select brand_name, round(avg(screen_size),2) as ss from smartphones_cleaned_v6
group by brand_name
order by ss asc limit 1;

Select brand_name, count(*) as count from smartphones_cleaned_v6 where has_nfc = 'True'
 and has_ir_blaster = 'True' group by brand_name;
 
 select has_nfc, round(avg(price),2) as price from smartphones_cleaned_v6
 where brand_name = 'samsung' group by has_nfc;
 
 -- Having clause
 
 Select brand_name, avg(price) as 'Avg Price' from smartphones_cleaned_v6
 group by brand_name
 having count(*) > 20
 order by `Avg Price` Desc;

 Select brand_name, avg(price) as 'Avg Price' from smartphones_cleaned_v6
 group by brand_name having avg(rating)>70 and count(*)>10;
 
 


