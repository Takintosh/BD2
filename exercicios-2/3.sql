USE PSDB;

SELECT
employees.first_name AS "Nombre",
employees.last_name AS "Apellido",
departments.dept_name AS "Departamento"

FROM employees
LEFT JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_manager.dept_no

WHERE employees.emp_no IN (110022, 110085, 10006);