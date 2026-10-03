📊 Data Analysis Set C – Training Performance Analysis

🎯 Objective:
The main objective of this project is to identify which course needs the most academic support and understand how performance differs across batches using Excel, SQL, Python, and Power BI.

📂 Dataset:
The project uses two files: assessments.csv and courses.csv. The assessment file originally contains 13 records, including one exact duplicate. After removing the duplicate, 12 clean records remain.

🧹 Data Cleaning:
A "pass_flag" is created where score ≥ 50 = Pass (1) and score < 50 = Fail (0). After cleaning, there are 12 assessments, 9 passes, and an overall 75.00% pass rate.

📗 Excel:
Excel contains Raw, Lookup, Clean, and Summary sheets. XLOOKUP is used to obtain department information, COUNTIFS is used to calculate passing assessments by batch, and a PivotTable is used to analyze average scores by department and month. A column chart is also created from the PivotTable.

🗄️ SQL:
SQL is used to create the assessment and course tables, establish the relationship between them, and analyze performance. Queries calculate the average score by department, identify courses with an average score below 60, and find the top two batches by average score.

🐍 Python:
Python uses pandas for data cleaning, merging, grouping, and calculating pass rates. Matplotlib is used to create the monthly performance chart. Python also identifies the course with the lowest pass rate and exports the cleaned data and summaries.

📊 Power BI:
Power BI connects the two datasets and creates a relationship between courses and assessments. DAX measures are created for Assessment Count, Average Score, and Pass Rate. The dashboard contains KPI cards, department charts, monthly performance charts, and a batch slicer.

📌 Main Findings:
• Overall assessments = 12
• Overall passes = 9
• Overall pass rate = 75.00%
• Python average score = 49.33
• Python pass rate = 33.33%
• Excel average score = 80.67%
• Evening batch average = 67.00
• Morning batch average = 61.25
• Weekend batch average = 56.25

🔍 Conclusion:
Based on the project’s performance metrics, Python has the lowest pass rate (33.33%) and lowest average score (49.33), indicating the greatest measured need for academic support. The Weekend batch also shows lower performance compared with the other batches.
