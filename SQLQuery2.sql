-- 1. List each employee first name, last name and supervisor status along with their department name. 
    -- Order by department name, then by employee last name, and finally by employee first name.

SELECT e.FirstName,  e.LastName, e.IsSupervisor, e.DepartmentId
FROM Employee e
LEFT JOIN Department d
ON e.DepartmentId = d.Id
GROUP BY e.FirstName, e.LastName, e.IsSupervisor, e.DepartmentId, d.Id
ORDER BY d.Id, e.LastName, e.FirstName

-- 2. List each department ordered by budget amount with the highest first.
SELECT d.Budget, d.Id, d.[Name]
FROM Department d
GROUP BY d.Budget, d.Id, d.[Name]
ORDER BY d.Budget desc;

-- 3. List each department name along with any employees (full name) in that department who are supervisors.
SELECT d.Budget, d.Id, d.[Name]
FROM Department d
GROUP BY d.Budget, d.Id, d.[Name]
ORDER BY d.Budget desc;
-- 4. List each department name along with a count of employees in each department.

-- 5. Write a single update statement to increase each department's budget by 20%.
-- 6. List the employee full names for employees who are not signed up for any training programs.
-- 7. List the employee full names for employees who are signed up for at least one training program and include the number of training programs they are signed up for.
-- 8. List all training programs along with the count employees who have signed up for each.
-- 9. List all training programs who have no more seats available.
-- 10. List all future training programs ordered by start date with the earliest date first.