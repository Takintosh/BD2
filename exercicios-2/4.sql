USE PSDB;
INSERT INTO departments VALUES ('d99', 'Compras Internas');
SELECT departments.dept_name AS "Departamento", employees.first_name AS "Nombre Gerente", employees.last_name AS "Apellido Gerente"
FROM employees
INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
RIGHT JOIN departments ON dept_manager.dept_no = departments.dept_no
/*WHERE NOW() BETWEEN dept_manager.from_date AND dept_manager.to_date*/;