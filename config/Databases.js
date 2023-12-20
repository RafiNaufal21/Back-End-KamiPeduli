import mysql from "mysql2";

// Create a connection to the database
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "kami_peduli",
});
console.log("yes");
// Connect to the database
connection.connect();

export default connection;
