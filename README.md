## Antarctica Global Assignment - Data Analyst
MV AMOGH - amoghmv

## What I used?
- Python (pandas, numpy, matplotlib, seaborn, sckit-learn, mysql.connector)
- MySQL
- Power BI

This repository contains SQL and Python-based analytics using packages like pandas, matplotlib, numpy, seaborn, sckit-learn to help gather business insights and solve problems.
The file **insights_through_analysis.pdf** is the report that includes everything related to the analysis, business insights, business recommendations and suggestions.

**File name - python_code_analysis.ipynb**
              AND
              **sql_code_analysis.sql** includes code used for the analysis to answer the following business questions:

1. **Lead Generation Efficiency** (SQL)
<img width="246" height="96" alt="MYSQL AG Q1" src="https://github.com/user-attachments/assets/2830aa7f-b720-4ad7-bb09-307c0142dcad" />

Ratio of leads generated to time spent — who is most efficient?

2. **Daily Performance Variability** (SQL)
<img width="229" height="103" alt="MySQL AG Q2" src="https://github.com/user-attachments/assets/dd6b6c33-94e1-4a31-8196-eb5c8f606752" />

Standard deviation of daily leads — who is most inconsistent?

3. **Time Management Analysis** (SQL,PYTHON) 
<img width="607" height="334" alt="MYSQL AG Q3" src="https://github.com/user-attachments/assets/c299ea65-843f-4e91-87e3-fc948ff04779" />

Correlation between time per lead and total leads generated

4. **Impact of Daily Team Reviews**  (SQL)
<img width="309" height="95" alt="MYSQL AG Q4 1" src="https://github.com/user-attachments/assets/ce29e035-3f52-41d8-9201-6142c6a5740a" />

<img width="453" height="97" alt="MYSQL AG Q4 2" src="https://github.com/user-attachments/assets/33ee1ea4-63ba-4ae9-bffe-89299c7d4141" />

Difference in performance on days when team reviews were attended vs missed

5. **Incomplete Leads Trend**  (PYTHON, PANDAS, MATPLOTLIB)
<img width="775" height="914" alt="PYTHON AG Q5" src="https://github.com/user-attachments/assets/bd92ae4b-d116-4cf7-9bd6-a271edf79606" />

Regression trend over time — are incomplete leads reducing over time?

6. **Performance Consistency** (SQL)
<img width="383" height="94" alt="MYSQL AG Q6" src="https://github.com/user-attachments/assets/bbbd0ea3-d34a-4360-9186-b07dd979f00a" />

Coefficient of variation — who is the most consistent performer?

7. **High-Performance Days**  (SQL)
<img width="381" height="101" alt="MYSQL AG Q7 1" src="https://github.com/user-attachments/assets/1ec80e82-d226-4f53-8cc6-3b754ef6cfd2" />

<img width="615" height="478" alt="MYSQL AG Q7 2" src="https://github.com/user-attachments/assets/f3f51382-9acf-409b-966d-5c0cd941d7aa" />

Top 10% lead-gen days — how much time was spent in those top days?

8. **Optimal Time Threshold**  (SQL)
<img width="315" height="118" alt="MYSQL AG Q8" src="https://github.com/user-attachments/assets/251bcead-ce29-474e-b644-1178a8e0d7d7" />

Is there a “sweet spot” for time spent that boosts leads?

9. **Weekday vs Weekend Performance** (SQL)  
<img width="346" height="222" alt="MYSQL AG Q9" src="https://github.com/user-attachments/assets/c682de61-9ee9-467a-b460-484d15c2a559" />

Comparing average leads between weekdays, midweek and weekends

10. **Predictive Analysis** (PYTHON - PANDAS,NUMPY,MATPLOTLIB)
<img width="781" height="1007" alt="PYTHON AG Q10" src="https://github.com/user-attachments/assets/c8322b90-828c-4d9c-b8ff-9cc9599fabd7" />

Simple linear regression to predict leads based on time spent

The next section to this report is the static dashboard.
**File name - python_dashboard_code.ipynb** contains the Python code used for visualisation of data (only boxplot and heatmap via python)
Reference to this link can also be made to look into the static dashboard image.

![Dashboard Antarctica Global](https://github.com/user-attachments/assets/eabb0377-0d33-4b27-8e00-db6a239aaacc)

**1. Impact of Daily Team Reviews** (POWER BI)
Line chart comparing daily leads generated on days attneded vs missed team reviews, per associate.

**2. Optimal Time Threshold** (PYTHON, SEABORN, MATPLOTLIB)
Heatmap showing how average leads vary across time buckets (e.g. 0–60, 61–120 min).

**3. Monthly Performance Comparison** (POWER BI)
Clustered bar chart showing total leads generated per associate across different months.


**5. Incomplete Leads Trend** (POWER BI)
Line chart tracking daily incomplete leads to analyze spikes and recovery patterns.

**6. Time Distribution Analysis** (PYTHON, SEABORN, MATPLOTLIB)
Box plot illustrating the spread and consistency of time spent on lead generation by associate.

