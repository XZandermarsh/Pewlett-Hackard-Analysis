-- Create new table joining names, titles, and title start and end dates --
SELECT 	e.emp_no, 
		e.first_name, 
		e.last_name, 
		ti.title, 
		ti.from_date, 
		ti.to_Date
INTO emp_titles
FROM employees as e
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
							first_name, 
							last_name, 
							title
INTO emp_titles_retire
FROM emp_titles
ORDER BY emp_no, to_date DESC;

-- Use Select Count to find the number of employees within each title who are about to retire.
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM emp_titles_retire
GROUP BY title
ORDER BY count DESC


-- Deliverable #2: Mentorship Eligibility
SELECT  DISTINCT ON (e.emp_no)
		e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		ti.title
INTO mentorship_eligibility
FROM 	employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no











