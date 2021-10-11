USE employee_management_system_db

INSERT INTO department (name)
VALUES  
("Sales"),
("Engineering"),
("Finance"),
("Legal");

INSERT INTO role (title, salary, department_id)
VALUES  
("Sales", 35000,  1),
("Sales Lead", 80000,  1);
("Software Engineer", 160000, 2),
("Mechanical Engineer", 60000,  2),
("Accountant", 80000,  3),
("Financial Analyst", 112000, 3),
("Lawyer", 240000, 4),
("Judge", 360000, 4),

        

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES  
("Claire", "Redfield", 1, 1);
("Anna", "Kretsinger", 2, 1),
("Caroline", "Heuer", 3, 2),
("Katherine", "Deloney", 4, 2),
("Sarah", "Pinkerton", 5, 3);
("Chris", "Redfield", 6, 3);
("Albert", "Wesker", 7, 4);
("Leon", "Kennedy", 8, 4);

INSERT INTO manager(first_name,last_name, department_id)
VALUES
('Ethan', 'Winter', 1),
('Klaus','Jamerson',2),
('Nathan','Drake',3),
('Sam','Drake',4);
