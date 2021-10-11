DROP DATABASE IF EXISTS employee_management_system_db;
CREATE DATABASE employee_management_system_db;

USE employee_management_system_db;

CREATE TABLE department(
  id INTEGER NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE role(
  id INTEGER NOT NULL AUTO_INCREMENT,
  title VARCHAR(45),
  salary DECIMAL,
  department_id INTEGER,
  PRIMARY KEY(id),
  FOREIGN KEY(department_id)
  REFERENCES department(id)
);

CREATE TABLE manager(
  id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  department_id INTEGER,
  PRIMARY KEY(id),
  FOREIGN KEY(departments_id)
  REFERENCES department(id)
);

CREATE TABLE employee(
  id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45),
  last_name VARCHAR(45),
  role_id INTEGER,
  manager_id INTEGER,
  PRIMARY KEY(id),
  FOREIGN KEY(role_id)
  REFERENCES role(id),
  FOREIGN KEY(manager_id)
  REFERENCES manager(id)
);