INSERT INTO departments (department_name)
VALUES  ("Sales"),
        ("Engineering"),
        ("Finance"),
        ("Legal");

INSERT INTO roles (title, salary, department_id)
VALUES  ("Salesperson", 35000, 1),
        ("Sales Lead", 80000, 1);
        ("Software Engineer", 160000, 2),
        ("Mechanical Engineer", 60000, 2),
        ("Accountant", 80000, 3),
        ("Financial Analyst", 112000,3),
        ("Lawyer", 240000, 4),
        ("Judge", 360000, 4),

        

INSERT INTO employees (first_name, last_name, role_id)
VALUES  ("Matt", "Matsil", 1),
        ("Anika", "Krieger", 1),  
        ("Anna", "Kretsinger", 2),
        ("Ari", "Drake", 2),
        ("Caroline", "Heuer", 3),
        ("Julia", "Cunningham", 3),
        ("Katherine", "Deloney", 4),
        ("Kiley", "Pittman", 4),
        ("Sarah", "Pinkerton", 5);
        ("Katie", "Barlow", 5);