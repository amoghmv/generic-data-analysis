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
Correlation between time per lead and total leads generated

4. **Impact of Daily Team Reviews**  (SQL)
Difference in performance on days when team reviews were attended vs missed

5. **Incomplete Leads Trend**  (PYTHON, PANDAS, MATPLOTLIB)
Regression trend over time — are incomplete leads reducing over time?

6. **Performance Consistency** (SQL)
Coefficient of variation — who is the most consistent performer?

7. **High-Performance Days**  (SQL)
Top 10% lead-gen days — how much time was spent in those top days?

8. **Optimal Time Threshold**  (SQL)
Is there a “sweet spot” for time spent that boosts leads?

9. **Weekday vs Weekend Performance** (SQL)  
Comparing average leads between weekdays and weekends
(also added mid-week for deeper analysis)

10. **Predictive Analysis** (PYTHON - PANDAS,NUMPY,MATPLOTLIB)
Simple linear regression to predict leads based on time spent

If running the code is not an option, 
the /captures folder an be opened to look for the output

The dashboard section includes the code and images to the following

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

