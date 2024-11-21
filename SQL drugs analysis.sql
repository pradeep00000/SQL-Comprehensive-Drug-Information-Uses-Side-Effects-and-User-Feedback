create schema drugs;
select * from drugs.medicine_details ;

#1.SQL Query: Get the names of all drugs in the dataset.
select * from drugs.medicine_details;
select `Medicine Name` 
from drugs.medicine_details
group by `Medicine Name`;

#2. SQL Query: Get the names and manufacturers of all drugs.
select * from drugs.medicine_details;
select Manufacturer 
from drugs.medicine_details
group by Manufacturer;

#3. SQL Query: Get the list of drugs that have side effects.
select * from drugs.medicine_details;
select `Medicine Name` , Side_effects
from drugs.medicine_details;
 
#4. SQL Query: Find the drug with the highest percentage of excellent reviews.
select * from drugs.medicine_details;
select `Medicine Name` , Side_effects
from drugs.medicine_details
where Side_effects is not null;

#5. SQL Query: Get all drugs where the manufacturer is 'PharmaCorp'.
select * from drugs.medicine_details;
select `Medicine Name`,Manufacturer 
from drugs.medicine_details
where Manufacturer = 'Sanofi India Ltd';
 
#6. SQL Query: Find the average percentage of excellent reviews for all drugs.
select * from drugs.medicine_details;
select avg(`Excellent Review %`)
from drugs.medicine_details;
 
#7. SQL Query: List drugs that have both 'Vomiting' and 'Nausea' as side effects.
select * from drugs.medicine_details;
select `Medicine Name` , Side_effects 
from drugs.medicine_details
where `Side_effects` like '%Vomiting%' and `side_effects` like '%Nausea%';
 
#8. SQL Query: Count how many drugs have more than 50% excellent reviews.
select * from drugs.medicine_details;
select count(`Average Review %`) as Drug_Count
from drugs.medicine_details
where `Average Review %` > 50 ;

#9.SQL Query: Get the names of drugs and their uses for drugs that have at least one side effect.
select * from drugs.medicine_details;
select `Medicine Name` , Uses , Side_effects
from drugs.medicine_details
where Side_effects != 'No common side effects seen';
 
#10. SQL Query: List the drugs where the "Average Review %" is between 40% and 80%.
select * from drugs.medicine_details;
select `Medicine Name` , `Average Review %`
from drugs.medicine_details
where `Average Review %` between 40 and  80 ;
 
#11. SQL Query: Find the drug with the lowest percentage of poor reviews.
select * from drugs.medicine_details;
select `Medicine Name` , `Poor Review %`
from drugs.medicine_details
order by `Poor Review %` asc
limit 1;
 
#12. SQL Query: Get the number of drugs manufactured by each company.
select * from drugs.medicine_details;
select Manufacturer , count(`Medicine Name`) as drug_count
from drugs.medicine_details
group by Manufacturer;
 
#13. SQL Query: Find the drug with the highest difference between excellent and poor reviews.
select * from drugs.medicine_details;
select `Medicine Name` , (`Excellent Review %` - `Poor Review %`) as difference
from drugs.medicine_details
order by difference  desc
limit 1;
 
#14. SQL Query: Get a list of all drugs with their side effects and a review percentage greater than 70%.
select * from drugs.medicine_details;
select `Medicine Name` , Side_effects , `Average Review %`
from drugs.medicine_details
where `Average Review %` > 70;

#15. SQL Query: For each manufacturer, find the average excellent review percentage of the drugs they produce.
select * from drugs.medicine_details;
select Manufacturer , avg(`Excellent Review %`)
from drugs.medicine_details
group by Manufacturer;

#16. SQL Query: Find the top 5 drugs with the most side effects (count of words in side effects).
select * from drugs.medicine_details;
select `Medicine Name`, `Side_effects`, 
length(`Side_effects`) - length(replace(`Side_effects`, ' ', '')) + 1 as side_effect_count
from drugs.medicine_details
order by side_effect_count desc
limit 5;
 
#17. SQL Query: Get a list of drugs where side effects are not listed, but there are excellent reviews above 80%.
select * from drugs.medicine_details;
select `Medicine Name` ,Side_effects , `Excellent Review %`
from drugs.medicine_details
 where Side_effects = 'No common side effects seen' and `Excellent Review %` >80;
 
#18. SQL Query: Get the names of drugs that have both "nausea" and "vomiting" as side effects, but no "headache".
select * from drugs.medicine_details;
select `Medicine Name` , Side_effects
from drugs.medicine_details
where Side_effects like 'vomiting' and Side_effects like 'Nausea' and Side_effects not like 'Headache';
 
#19. SQL Query: Calculate the total percentage of excellent, average, and poor reviews for all drugs.
select * from drugs.medicine_details;
select sum(`Excellent Review %`) , sum(`Average Review %`) , sum(`Poor Review %`)
from drugs.medicine_details;
 
#20. SQL Query: Find the drug with the highest average review percentage that has more than 2 side effects.
select * from drugs.medicine_details;
select `Medicine Name` , Side_effects , `Average Review %`
from drugs.medicine_details 
where length(`Side_effects`) - length(replace(`Side_effects`, ' ', '')) + 1 > 2
order by `Average Review %` desc
limit 1;
