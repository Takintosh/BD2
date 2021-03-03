USE PSDB;
SELECT employees.first_name AS "Nombre", employees.last_name AS "Apellido", departments.dept_name AS "Departamento"
FROM employees
LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE employees.emp_no = 110022 OR employees.emp_no = 110085 OR employees.emp_no = 10006;