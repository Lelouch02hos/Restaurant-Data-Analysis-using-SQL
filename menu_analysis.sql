USE restaurant_db;


select* from menu_items;

#--2. find the number of items on the menu.

select count(*) from menu_items;
#3-- what are the least and most expensive items on the menu ?

select* from menu_items
ORDER by price;

select* from menu_items
ORDER by price DESC;

#4-- how many italian dishes on the menu?
select count(*) from menu_items
where category ='italian';
#5 what are the least and most  expensive italian dishes on the menu ?
select * 
from menu_items
where category ='italian'
order by price;

select * 
from menu_items
where category ='italian'
order by price desc;
#6 how many dishes are in each category ?
select category, count(menu_item_id) AS num_dishes
from menu_items
group by category;
#7 what is the average dish price within each category ?
select category, avg(price) AS avg_price
from menu_items
group by category;


