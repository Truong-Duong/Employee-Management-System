const database = require("./connection");

class databaseMethods {
    constructor() {
        this.database = database;
    }

    viewEmployees() {
        return this.database.promise().query(
            `
            SELECT employees.id AS 'Employee ID', concat(employees.first_name,' ', employees.last_name) AS 'Name', roles.title AS 'Title', departments.name AS 'Department', roles.salary AS 'Salary', concat(managers.first_name,' ',managers.last_name) AS 'Manager'
            FROM employees
            INNER JOIN roles
            On employees.role_id = roles.id
            INNER JOIN departments 
            ON roles.department_id = departments.id 
            INNER JOIN managers 
            ON employees.manager_id = managers.id;
            `,
        );
    }

    viewDepartments() {
        return this.database.promise().query(`SELECT * FROM departments;`);
    }

    viewRoles() {
        return this.database.promise().query(
            `
            SELECT roles.title AS 'Title', roles.id as'Role ID', departments.name AS 'Department', roles.salary AS 'Salary' 
            FROM roles 
            INNER JOIN departments 
            ON roles.department_id = departments.id;
            `,
        );
    }

    addEmployees(first, last, role, manager) {
        return this.database.promise().query(
            `
            INSERT INTO employees(first_name, last_name, role_id, manager_id)
            VALUES(?,?,(SELECT id FROM roles WHERE roles.title = ?), 
            (SELECT id FROM managers WHERE concat(managers.first_name,' ',managers.last_name) = ?));
            `,
            [first, last, role, manager]
        );
    }
    
    addDepartments(name) {
        return this.database.promise().query(
            `
            INSERT INTO departments(name)
            VALUES (?)
            `,
            name
        );
    }
      
    addRole(title, salary, department) {
        return this.database.promise().query(
            `
            INSERT INTO roles(title, salary, department_id)
            VALUES (?,?,(SELECT id from departments WHERE departments.name = ?));
            `,
            [title, salary, department]
        );  
    }
    
    selectManager() {
        return this.database.promise().query( 
            `
            SELECT concat(managers.first_name,' ',managers.last_name) as name FROM managers;
            `
        );
    }
    
    updateManager(manager, employee) {
        return this.database.promise().query(
            `
            UPDATE employee
            SET manager_id = (SELECT id FROM managers WHERE concat(managers.first_name,' ',managers.last_name) = ? )
            WHERE employees.id = ?;
            `,
            [manager, employee]
        );
    }
    
    updateEmpRole(role, employee) {
        return this.database.promise().query(
            `
            UPDATE employees
            SET role_id = (SELECT id FROM roles WHERE title = ?)
            WHERE employees.id =?;
            `,
            [role, employee]
        );
      }
      
    deleteDepartment(dep) {
        return this.database.promise().query(
            `
            DELETE FROM departments
            WHERE departments.name =?
            `,
            dep
        );
      }
    
    deleteRole(name) {
        return this.database.promise().query(`DELETE FROM role WHERE role.title =?`, [name]);
    }
    
    employeeByManager(man) {
        return this.database.promise().query(
            `
            SELECT  concat(managers.first_name,' ',managers.last_name) AS 'Manager', concat(employees.first_name,' ',employees.last_name) AS 'Name'  
            FROM employees
            INNER JOIN managers
            ON employees.manager_id = managers.id
            WHERE concat(managers.first_name,' ',managers.last_name) = ?;
            `,
            man
        );
    }
    
    budgetAll() {
        return this.database.promise().query(
          ` SELECT DISTINCT department.name AS 'Department', SUM(role.salary) AS 'Staff Budget'
            FROM department
            LEFT JOIN role
            ON department.id = role.department_id
            LEFT JOIN employee
            ON employee.role_id = role.id
            GROUP BY department.name;
            `,
        );
    }

    budgetByDept(dep) {
        return this.database.promise().query(
            ` 
            SELECT DISTINCT departments.name AS 'Department', SUM(roles.salary) AS 'Staff Budget'
            FROM departments
            INNER JOIN roles
            ON departments.id = role.department_id
            INNER JOIN employees
            ON employees.role_id = role.id
            WHERE departments.name =?;
            `,
            dep
        );
    }
    
    deleteEmployee(name) {
        return this.database.promise().query(
            `
            DELETE FROM employees
            WHERE concat(first_name,' ',last_name) =?; 
            `,
            name
        );
    }
    
    employeeByDept(dep) {
        return this.database.promise().query(
            `
            SELECT departments.name AS 'Department', concat(employees.first_name,' ',employees.last_name) AS 'Employee Name', roles.title AS 'Job Title' FROM employees INNER JOIN roles
            ON employees.role_id = roles.id
            INNER JOIN departments
            ON roles.department_id = departments.id
            WHERE departments.name = ?;
            `,
            dep
        );
    }
}

module.exports = databaseMethods;