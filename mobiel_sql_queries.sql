create schema mobile_data_analysis;

-- importing data from csv file--

use mobile_data_analysis;
select*from mobile_data;

-- Query no 1 :- Check mobile features and price list.--
select phone_name, price from mobile_data;

-- Query no 2 :- Find out the price of 5 most expensive phones.--
select * from mobile_data
order by price desc
limit 5;

-- Query no 3 :- Find out the price of 5 most cheapest phones.--
select * from mobile_data
order by price asc
limit 5;

-- Query no 4 :- List of top 5 Samsung phones with price and all features.--

select * from mobile_data where brands = "samsung"
order by price desc
limit 5 ;

-- Query no 5 :- Must have android phone list then top 5 highest price android phones.--
select * from mobile_data where Operating_System_Type = "Android"
order by price desc
limit 5 ;

-- Query no 6 :- Must have android phone list and top 5 lowest price android phones.--
select * from mobile_data where Operating_System_Type = "Android"
order by price asc
limit 5;

-- Query no 7 :- Must have IOS phone list then top 5 Highest price IOS phones. --
select * from mobile_data where Operating_System_Type = "IOS"
order by  price desc
limit 5;

-- Query no 8 :- Must have IOS phone list then top 5 lowest price IOS phones. --
select * from mobile_data where Operating_System_Type = "IOS"
order by price asc
limit 5;

-- Query no 9 :- Write a query which phone support 5G and also top 5 phones with 5G support.--
select * from mobile_data where 5G_Availability = "Yes"
order by price desc 
limit 5; 

-- Query no 10 :- Total price of all mobile is to be found with brand name. --
select brands, sum(price) from mobile_data group by brands;