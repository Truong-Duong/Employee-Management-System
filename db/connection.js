const sql = require("mysql2");

const db = sql.createConnection({
  host: "localhost",
  user: "root",
  password: "Tru0ngDu0ng$",
  database: "employee_management_system_db",
});

db.connect(function (err) {
  if (err) throw err;
});

module.exports = db;