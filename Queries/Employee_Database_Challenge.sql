--Deliverable 1: 

--Create Retirement Titles table tohold all titles of current employees 
--born between Jan 1, 1952 and Dec 31, 1955

SELECT e.emp_no, e.first_name, e.last_name,
ti.title, ti.from_date, ti.to_date
INTO retirement_ titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--use DISTINCT ON, to contain most recent title of each employee
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

--Then use Count() to create final table with number of retirement-age employees
--by most recent job title
SELECT COUNT(ut.title)
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY Count DESC


--Deliverable 2: 

--Create Mentorship Eligibility table that holds employees eligible
--to participate in a mentorship program
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
de.from_date, de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;
