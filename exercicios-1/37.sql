USE PSDB;
SELECT * FROM employees AS emp WHERE emp.emp_no IN (494831, 479832, 599833, 499832) AND (emp.gender IN "M", "F");