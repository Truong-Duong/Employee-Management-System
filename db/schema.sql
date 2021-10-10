DROP DATABASE IF EXISTS employee_management_system_db;
CREATE DATABASE employee_management_system_db;

USE employee_management_system_db;

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS managers;
DROP TABLE IF EXISTS employees;

CREATE TABLE departments (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INTEGER,
  FOREIGN KEY(department_id)
  REFERENCES departments(id)
);

CREATE TABLE managers (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  department_id INTEGER,
  FOREIGN KEY (department_id)
  REFERENCES department(id)
);

CREATE TABLE employees (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER NOT NULL,
  manager_id INTEGER,
  FOREIGN KEY(role_id) 
  REFERENCES roles(id),
  FOREIGN KEY(manager_id)
  REFERENCES manager(id)
);