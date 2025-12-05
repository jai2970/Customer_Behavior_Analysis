select * from customer


-- Total revenue male vs female
select gender  , SUM(purchase_amount)
from customer
group by gender 

-- costomers who used a discount but purchase cmount > avg 

select count(distinct customer_id)
from customer
where discount_applied  = 'Yes'
and purchase_amount >= (select avg(purchase_amount ) from customer)



-- top 5 products with highest average rating 

select item_purchased , round(avg(review_rating::numeric ) ,2)
 from customer
 group by item_purchased
 order by avg(review_rating )
 limit 5


-- avg purchase amount standard vs express

select shipping_type , round(avg(purchase_amount),2)
from customer 
where shipping_type in ('Standard' , 'Express')
 group by shipping_type



--Q5. Do subscribed customers spend more? Compare average spend and total revenue 
--between subscribers and non-subscribers.

select subscription_status , count(customer_id ) as total_cus , round(avg(purchase_amount),2) as avg_spend 
, round(sum(purchase_amount),2) as total_revenue 
from customer
group by subscription_status
order by total_revenue , avg_spend desc

--Q6. Which 5 products have the highest percentage of purchases with discounts applied?

SELECT 	item_purchased , 
round (100*sum (case when discount_applied = 'Yes' then 1 end)/count(*) ,2) discount_Rate
from customer 
group by item_purchased
order by discount_Rate desc
limit 5



 --Q7. Segment customers into New, Returning, and Loyal based on their total 
-- number of previous purchases, and show the count of each segment.

--new 1
-- returning 2-10 
-- loyal > 10 

with cus_type as (
select customer_id , previous_purchases , 
case when previous_purchases = 1 then 'New' 
when previous_purchases between  2 and 10  then 'Returning'
else 'Loyal'
end as cust_segment 
from customer 
)
select cust_segment , count(*) as No_of_cust
from cus_type 
group by cust_segment

 --Q8. What are the top 3 most purchased products within each category?

with item_count as(
select category , 
item_purchased , count (customer_id ) as Total_orders  , 
row_number() over (partition by category order by count(customer_id) desc ) as rn
from customer 
group by category ,item_purchased
)

select category ,item_purchased ,Total_orders
from item_count 
where rn <= 3


--Q9. Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?

select subscription_status , 
count(customer_id ) as repeat 
from customer 
where  previous_purchases > 5
group by subscription_status
 

 --Q10. What is the revenue contribution of each age group? 

select age_group , sum(purchase_amount) as total 
from customer 
group by age_group 
order by total desc



 