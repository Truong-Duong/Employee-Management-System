USE employee_management_system_db

INSERT INTO departments (dept_name)
VALUES  
("Sales"),
("Engineering"),
("Finance"),
("Legal");

INSERT INTO roles (title, salary, department_id)
VALUES  
("Sales",         35000,  1),
("Sales Lead",          80000,  1);
("Software Engineer",   160000, 2),
("Mechanical Engineer", 60000,  2),
("Accountant",          80000,  3),
("Financial Analyst",   112000, 3),
("Lawyer",              240000, 4),
("Judge",               360000, 4),

        

INSERT INTO employees (first_name, last_name, role_id)
VALUES  
("Claire",    "Redfield",   1);
("Anna",      "Kretsinger", 2),
("Caroline",  "Heuer",      3),
("Katherine", "Deloney",    4),
("Sarah",     "Pinkerton",  5);
("Chris",     "Redfield",   6);
("Albert",    "Wesker",     7);
("Leon",      "Kennedy",    8);