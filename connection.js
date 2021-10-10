const sql = require("mysql2");

const database = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Tru0ngDu0ng$",
    database: "employee_management_system_db",
});

database.connect(function(err) {
    if (err) throw err;
});

module.exports = database;