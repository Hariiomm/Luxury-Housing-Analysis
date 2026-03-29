use Luxury_housing;

select * from housing_data;

DESC housing_data;

-- 	1 Booking Status Distribution
select Transaction_Type, count(*) as Total
from housing_data
group by Transaction_Type;

-- 2 Builder Performance
select Developer_Name, avg(Ticket_Price_Cr) as Avg_price
from housing_data
group by Developer_Name
order by Avg_Price desc;

-- 3 Top 5 Builders by Revenue
select Developer_Name, sum(Ticket_Price_Cr) as Total_Revenue
from housing_data
group by Developer_Name
order by Total_Revenue desc 
limit 5;

-- 4 Conversion Rate (VERY IMPORTANT)
select Micro_Market, 
avg(Booking_Flag) as Conversion_rate
from housing_data
group by Micro_Market
order by Conversion_rate desc;

-- 5 Configuration Demand 
select Configuration, count(*) as Total_Bookings
from housing_data
group by Configuration
order by Total_Bookings desc;

-- 6 Quarterly Trends
select Quarter_Number,
count(*) as Total_Sales
from housing_data
group by Quarter_Number
order by Quarter_Number;