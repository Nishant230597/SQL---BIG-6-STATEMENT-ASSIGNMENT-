select * from staff ; -- 1
select First_name First_Name ,last_name Last_Name , email Email_Address , store_id store_ID_Number from  staff;

select * from inventory ; -- 2
select store_id , count(film_id) Count_of_Films from inventory group by store_id ;


-- 3
select * from customer;
select store_id , count(active) Active_customers from customer group by store_id ;

--  4
select * from customer ;

select Count(email) Total_email from customer ;

-- 5 
SELECT * FROM mavenmovies.film_category;
SELECT * FROM mavenmovies.category;

select count(film_category.film_id) Count_of_Unique_Title , count(category.category_id) Count_of_Unique_Category from film_category 
 left join category on film_category.film_id = category.category_id ;


-- 6  
select* from film ; 
select min(replacement_cost)  , max(replacement_cost) , avg(replacement_cost) from film ;


-- 7
select *from payment;
select avg(amount) Avg_Amount , max(amount) Max_Amount  from payment ;

-- 8
select * from rental ;
select customer_id , count(rental_id) from rental group by customer_id order by count(rental_id) desc ;















