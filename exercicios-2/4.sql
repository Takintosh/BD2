USE PSDB;

INSERT INTO departments
VALUES ('d99', 'Compras Internas');

SELECT
departments.dept_name AS "Departamento",
employees.first_name AS "Nombre Gerente",
employees.last_name AS "Apellido Gerente"

FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
RIGHT JOIN departments
ON dept_emp.dept_no = departments.dept_no;