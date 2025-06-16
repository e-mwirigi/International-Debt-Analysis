----Total amount of debt owed by all countries in the dataset.
select sum(debt) as total_debt
from evening_class.international_debt_with_missing_values idwmv;


----How many distinct countries are recorded in the database?
select count(distinct country_name) as num_countries
from evening_class.international_debt_with_missing_values idwmv
where country_name <> '';

----What are the distinct types of debt indicators, and what do they represent
select distinct indicator_name
from evening_class.international_debt_with_missing_values idwmv
where indicator_name <> ''; 


----Which country has the highest total debt and how much does it owe?
select country_name, sum(debt) as total_debt
from evening_class.international_debt_with_missing_values idwmv 
where country_name <> ''
group by country_name
order by total_debt desc
limit 1;

----Average debt across different debt indicators 
select indicator_name, avg(debt) as average_debt
from evening_class.international_debt_with_missing_values idwmv 
where indicator_name <> ''
group by idwmv.indicator_name 
order by average_debt desc;

----Which country has made the highest amount of principal repayments
select country_name, coalesce(sum(debt), 0) as total_repayments
from evening_class.international_debt_with_missing_values idwmv
where indicator_code in ('DT.AMT.DLXF.CD', 'DT.AMT.DPNG.CD')
group by country_name
having length (country_name) > 0 
order by total_repayments desc
limit 1;

----What is the most common debt indicator across all countries
select indicator_name, count(indicator_name) as common_debt_indicator
from evening_class.international_debt_with_missing_values idwmv 
where indicator_name <> ''
group by indicator_name
order by common_debt_indicator desc
limit 1;