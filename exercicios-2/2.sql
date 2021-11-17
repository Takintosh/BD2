USE PSDB;

SELECT
employees.first_name AS "Nombre",
employees.last_name AS "Apellido",
departments.dept_name AS "Departamento",
dept_emp.from_date AS "Inicio",
dept_emp.to_date AS "Fin"

FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no;