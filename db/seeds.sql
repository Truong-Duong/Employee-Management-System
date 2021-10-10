USE employee_management_system_db

INSERT INTO departments (name)
VALUES  
("Sales"),
("Engineering"),
("Finance"),
("Legal");

INSERT INTO roles (title, salary, department_id)
VALUES  
("Salesperson",         35000,  1),
("Sales Lead",          80000,  1);
("Software Engineer",   160000, 2),
("Mechanical Engineer", 60000,  2),
("Accountant",          80000,  3),
("Financial Analyst",   112000, 3),
("Lawyer",              240000, 4),
("Judge",               360000, 4),

        

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES  
("Matt",      "Matsil",     1, 1),
("Anika",     "Krieger",    1, 1),  
("Anna",      "Kretsinger", 2, 1),
("Ari",       "Drake",      2, 1),
("Caroline",  "Heuer",      3, 2),
("Julia",     "Cunningham", 3, 2),
("Katherine", "Deloney",    4, 2),
("Kiley",     "Pittman",    4, 2),
("Sarah",     "Pinkerton",  5, 3);
("Katie",     "Barlow",     5, 3);
("Chris",     "Redfield",   6, 3);
("Jill",      "Valentine",  6, 3);
("Albert",    "Wesker",     7, 4);
("Rebecca",   "Chambers",   7, 4);
("Leon",      "Kennedy",    8, 4);
("Claire",    "Redfield",   8, 4);

INSERT INTO managers (first_name, last_name, department_id)
VALUES
("Billy",     "Coen",      1);
("Ada",       "Wong",      2);
("Jake",      "Muller",    3);
("Ethan",     "Winters",   4);