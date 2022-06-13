-- Join the two tables so that every column and record appears, regardless of if there is not an owner_id
select *
from owners 
full join vehicles 
on owners.id = vehicles.owner_id


-- Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. 
-- The first_name should be ordered in ascending order
select first_name, last_name, count(*)
from owners
join vehicles
on owners.id = vehicles.owner_id
group by owners.id
order by count 


-- Count the number of cars for each owner and display the average price for each of the cars as integers. 
-- Display the owners first_name, last_name, average price and count of vehicles. 
-- The first_name should be ordered in descending order. 
-- Only display results with more than one vehicle and an average price greater than 10000
select first_name, last_name, round(avg(price)) as average_price, count(*) 
from owners

join vehicles
on owners.id = vehicles.owner_id

group by owners.id
having count(*) > 1 and avg(price) > 10000
order by first_name desc