--Selecting all the columns and rows
Select * from daikibo_telemetry_data


--Which factory has the highest downtime device?
With CTE as(Select *, 
CASE WHEN status = 'unhealthy' then 10 else 0 end as downtime --adding new column temporarily
from daikibo_telemetry_data)

Select TOP 1 factory from CTE    --Selecting the factory with the highest downtime
where status = 'unhealthy'
group by factory
order by sum(downtime) desc      
--concepts learnt - we can use aggregate in the order by clause as well but don't forget to use group by here too


--What's the overall health_percentage of the factories?
Select CONCAT(CAST(ROUND(CAST(SUM(
CASE WHEN status = 'healthy' THEN 1 else 0 end) * 100 as decimal (10,2))
/ count(*),2) as decimal (10,2)), '%') as health_Percentage
from daikibo_telemetry_data 


--Select the top 3 devices with the highest downtime.
--CTE for adding new column downtime
With CTE as (
Select *, 
CASE WHEN status = 'unhealthy' then 10 else 0 end as downtime 
from daikibo_telemetry_data)
--finding the top 3 downtime devices also execute these queries together with the above CTE
Select TOP 3 device_type, 
sum(downtime) as total_downtime
from CTE
group by device_type 
order by total_downtime desc


--Which country has the highest factory set up and what's the factory healthy of that country?
Select TOP 1 country 
from daikibo_telemetry_data
group by country
order by count(*) desc -- from this query we know that the country is japan

Select country, CONCAT(CAST(CAST(SUM(
CASE WHEN status = 'healthy' THEN 1 else 0 end) * 100 as decimal (10,2))
/ count(*) as decimal (10,2)), '%') as health_Percentage
from daikibo_telemetry_data 
where country = 'japan'
group by country


--Which country has the lowest factory set up and what's the factory healthy of that country?
Select TOP 1 country 
from daikibo_telemetry_data
group by country
order by count(*) -- from this query we know that the country is china

Select country, CONCAT(CAST(CAST(SUM(
CASE WHEN status = 'healthy' THEN 1 else 0 end) * 100 as decimal (10,2))
/ count(*) as decimal (10,2)), '%') as health_Percentage
from daikibo_telemetry_data 
where country = 'china'
group by country


--Just incase if I want to see the values without cast
--Select country, CONCAT(CAST(SUM(
--CASE WHEN status = 'healthy' THEN 1 else 0 end) * 100 as decimal (10,2))
--/ count(*),'%') as health_Percentage
--from daikibo_telemetry_data 
--where country = 'china'
--group by country