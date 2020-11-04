# Pewlett-Hackard-Analysis

## Overview of the analysis:
The analysis of Pewlett-Hackard employee data to determine (1) the number of retiring employees per title and (2) identify employees who are eligible to participate in a mentorship program.  SQL queries were used to retrieve data and create new tables from results.

## Results: 

Four major points from the two analysis deliverables:
1. From deliverable #1, the results of the initial query for the retirement_titles table shows duplicate entries because some employees have switched titles over the years.  In order to have an accurate number of retiring employees per title, duplicate entries were removed and the latest titles were retrieved.  

2. The results from deliverable #1 shows the count of retiring employees per title, the highest numbers per title are senior engineers (29,414) and senior staff (28,254).  Only 2 managers will be retiring.
![retiring_titles.csv](Data/retiring_titles.csv)

3. From deliverable #2, there are 1,549 employees who are eligible for the mentorship program.  

4. A count of the eligible employees for the mentorship program shows available staff by title and count.
![mentorship_count.csv](Data/mentorship_count.csv)

## Summary: 
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?  

A total of 90,398 roles will need to be filled.

![total_roles.csv](Data/total_roles.csv)

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 

There are 90,398 retirement-ready employees and 1,549 employees are eligible for the mentorship program.  There will be a limit to how many new employees can start at once since there's a large number of expected new hires to back-fill the vacancies.