USE PSDB;

SELECT
employees.first_name AS "Nombre",
employees.last_name AS "Apellido",
salaries.salary AS "Salario",
salaries.from_date AS "Inicio",
salaries.to_Date AS "Fin"

FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no

WHERE employees.emp_no = 10006
ORDER BY salaries.from_date;