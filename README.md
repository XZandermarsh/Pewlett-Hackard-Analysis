# Pewlett-Hackard-Analysis

## Overview
* The purpose of this analysis was to evaluate a very large data set to provide insights which the company can use to plan ahead for a wave of retirees. SQL (PostGres) was used for the analysis since the files are too large to easily transform in excel. Results tables were exported as .csv files.

## Results
### Anticipated Retirees by Title
* After performing a count of each title for the group of employees expected to retire soon (Born 1952-1955), the Senior Engineer and Senior Staff had by far the highest anticipated vacancy due to retirement. A full table of the results is displayed below:

![alt text](https://github.com/XZandermarsh/Pewlett-Hackard-Analysis/blob/main/retiring_titles.png "Retirement Titles")

* This result makes sense, since older employees tend to occupy more senior roles in the workforce. 
* On the other hand, there are only 2 current managers expected to retire soon, so HR can focus on a hiring strategy for the other positions first.

### Mentorship Recommendations
* As HR attempts to fill the open positions, they are interested in a mentorship program that would mid and lower level employees to gain knowledge that would allow them to move up into the positions that will be vacant once the wave of retirements start. 
* The query considered all current employees who were born in the year 1965 as the starting point for the mentorship program
* The query resulted in 1549 current employees who match the criteria.

![alt text](https://github.com/XZandermarsh/Pewlett-Hackard-Analysis/blob/main/mentorship_eligibility.png "Mentorship Eligibility")

* The resulting csv file lists these employee numbers, along with names, birthdates, hiring date, and title.

## Summary
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
* Based on the criteria for the retirement wave given (born 1952-1955), there are 90,398 positions that could become vacant. This will likely happen over the course of three years as the employees gradually reach retirement age.
### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
* Considering the numbers at a high level, there are more than enough retirement-ready employees who could lead a mentorship program. There are 90,398 employees who will be retiring soon, and the mentorship program will start with 1549 employees. Whether the employees need to cross-train into different departments is another question.

### Recommendations for additional queries:
1.  The analysis performed did not consider the number of retirees within each department in the company. A suggested query would be to perform a similar activity to Deliverable 1, except within each department. This would give an idea if some departments have a larger share of the retirement-age employees, and the hiring could be prioritized according to the departments expected vacancy by percentage.
2.  Most companies will attempt to hire/promote from within before looking to hire from outside the company. In this case, another helpful query would be to capture the number of retirement age employees within each department compared to the number of non-retirement age employees. This would give HR more direction on whether they can use a mentorship/training program to promote younger employees as the positions open, or if they need to focus more on marketing the open positions outside the company with job postings, recruitment, and job fairs.
