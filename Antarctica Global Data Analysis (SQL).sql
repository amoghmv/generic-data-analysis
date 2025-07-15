#QUESTION 1
with lead_generation_efficiency as ( 
#using CTE for easier reference
select
	associate_name, 
    #associate_name to appear in the table for readability
	round(sum(leads)/ #rounding it to 2 decimals
		sum(time_spent_lead_generating) 
		*100,2) as	time_spent 
/*calculating the ratio of total leads to time spent per lead by 
	divding sum_of_leads and sum_of_time_spent_per_lead*/

from performance_data #signalling which table to refer to
group by 1 
#grouping the data by associate_name as we need to find the data respective to each associate
order by time_spent desc
#filtering it by time_spent in a descending order, so we get the highest number on the top
) select * from lead_generation_efficiency;

#QUESTION 2
with performance_variability as(
select
	associate_name, #for readability
    round(
		stddev(leads),2) as std_dev 
	/*finding the standard deviation
    "How far away is leads generated from the average number?"*/
from performance_data #main table
group by 1 #to get associate respective data
order by std_dev desc #to filter std_dev in a descending order
# limit 1 - can be used if you only want that one name to show up 
) select * from performance_variability;

#QUESTION 3 
with time_based_analysis as (
select
	date, day,
    associate_name,
	round(avg( #finding the average time taken per lead
		time_per_lead),2) as avg_time_per_lead_min,
	sum( 		#finding the total leads generated
		leads)	as	leads_total
from performance_data #main table
group by 1,2,3 #respective to associate_name and date
) select * from time_based_analysis;

#QUESTION 4
with difference_in_performance as (
select
	associate_name,
	(leads_when_attended - leads_when_missed) / leads_when_attended
		*100 as percentage_decrease #finding out % decrease
from( #using a subquery so the query is readable
select
	associate_name, 
	round(avg(case when daily_team_review = 'Attended' then leads else null end
		),2) as leads_when_attended, #brings out leads generated when team review was attended
	round(avg(case when daily_team_review = 'Missed' then leads else null end
		),2) as leads_when_missed #brings out leads generated when team review was missed
from performance_data #main table
group by 1 #respective to associate_name
) as performance_post_team_review #adding an alias for the subquery (subquery ends here)
group by 1 #grouping the outer query by associate_name
) select*from difference_in_performance;

#QUESTION 6
with coefficient_variation as (
select
	associate_name,
    round(stddev(leads),3) as std_dev, 
    #finding the standard deviation of the leads
    round(avg(leads),2) as avg_leads, 
    #finding out the average (mean) of the leads by each associate
    round((stddev(leads)/avg(leads)),3) as cv_leads 
    #coefficient of variation is found out by dividing std_dev and avg mean of the data
from performance_data #main table
group by 1 #respective to associate_name
) select * from coefficient_variation;

#QUESTION 7
with ranked as (
  select
    associate_name, leads,
    time_spent_lead_generating,
	dense_rank() over(partition by associate_name order by leads desc) as leads_ranked,
    #ranking the days based on number of leads generated for each associate, in a descending order
    count(*) over(partition by associate_name) as total_days
    #counting the total number of records in the dataset. Helps us calculate TopN for individual associate
    #window function helps us keep all the records intact and 
  from performance_data
)select * from ranked;
select
  associate_name,
  sum(leads) as leads_total,
  round(avg(time_spent_lead_generating), 2) as top_days_avg_time
  #now on to finding the average time spent for ALL the days
from ranked #referring to the CTE created above
where leads_ranked <= ceil(total_days * 0.10)
#multiplying the total days with 0.10 (10%) gives us the data only for the top 10% of the days
#CEIL rounds off the decimals to the nearest integer (float to integer)
group by 1; #data with respect to individual associate

#QUESTION 8
with impact_of_longer_time as (
select
	time_group, #as mentioned in the subquery (the case statements)
    round(avg(	#finding the average leads that fall under that timeframe
		leads),2) as avg_leads,
	count(*) as num_days #the number of rows that fall into each timeframe bucket
from( #beginning of subquery
select
	leads, #to add number of leads into the time bucket/also helping us use avg in the outer query
	case 
		when time_spent_lead_generating <= 60 then '1) 0-60 min'
        when time_spent_lead_generating <=120 then '2) 61-120 min'
        when time_spent_lead_generating <= 180 then '3) 121-180 min'
        else '4) 181+ min'
        #creating time buckets to segregate total leads into different timeframes
        #added serial number so that 'order by ascending' works as intended
	end as time_group #alias for the case statement
from performance_data #main table
) as time_bucket #alias for the subquery
group by 1 #grouping by the time bucket
order by 1 asc #sorting data in an ascending order
) select*from impact_of_longer_time;

#QUESTION 9
with comparative_day_analysis as (
select
	associate_name,
	round(avg(leads),3) as avg_leads, #to find the average leads generated for the day
	case 
		when day in ('Sat','Fri') then 'Weekend' #specifying what falls under weekend bucket
        when day in ('Wed','Thu') then 'Midweek' #midweek to enhance analysis
        else 'Weekday' #other days would fall into weekdays
	end as part_of_week #created a case statement to segregate days of the week into buckets
from performance_data #main table
group by 1,3 #data respective to associate_name and 'week bucket'
order by 1,3 asc #sorting the data 
) select*from comparative_day_analysis;