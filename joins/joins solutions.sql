-- join

-- 1
-- manager details , store full address ,  street distict , city and country ; 
    
    select 
    store.store_id, 
    concat(first_name,' ', last_name) as Full_name ,
    address,
    district,
    city,
    country
    from store 
    left join staff on store.store_id = staff.store_id
    left join address on store.address_id = address.address_id
    left join city on address.city_id = city.city_id
    left join country on city.country_id = country.country_id 
    group by store_id ;
    
    
    -------
    -- 2
-- all record of invrntory  , store_id , inventory id , films , rating , rental rate  , replacement cost  
 select  
       inventory_id,
       store_id,
       title,
       rating ,
       rental_rate,
       replacement_cost
      from inventory 
      join film on inventory.film_id = film.film_id ;

------
-- 3
select  
       count(inventory_id) Count_of_inventory_items,
       store_id,
       rating 
       from inventory 
      join film on inventory.film_id = film.film_id 
      group by  rating ;
      
      ------
      
      -- 4
 select 
      name  as  category,
      count(film.film_id) NO_of_films ,
      avg(replacement_cost) Avg_replacement_cost ,
      sum(replacement_cost) Total_replacement_cost
   from category join film_category on category.category_id = film_category.category_id
    join film on film_category.film_id = film.film_id
    group by  name  ;
    
    


------
-- 5

select 
        concat(first_name,' ' , last_name) " Name of Customers" ,
        store_id, 
        active "Active Status" ,
        Address,
        city,
        country 
from customer    
           left join  address on customer.address_id = address.address_id
           left join city on address.city_id = city.city_id
           left join country on city.country_id = country.country_id ;
           
           
-------

-- 6

select  
	concat(first_name,' ' , last_name)  Name_of_Customers ,
    count(rental_id) Count_of_Rental,
    sum(amount) Total_amoumt_paid
from customer  
     join payment on customer.customer_id =payment.customer_id
     group by Name_of_Customers  order by  sum(amount) desc ;
     
-----
-- 7

select 
   concat(first_name, ' ' , Last_name) as Names,
   "investor" as "Investor/Advisor"
 from investor
 union
 select 
   concat(first_name, ' ' , Last_name) as Names,
   "advisor"  as "Investor/Advisor"
   from advisor ;

-----
-- 8
select actor_id ,
	   concat(firsta_name , ' ' , last_name) Actor_name ,
      
from actor_award
            left join actor on actor_award.actor_id = actor.actor_id
			left join film_actor on actor.actor_id = film_actor.actor_id ;

