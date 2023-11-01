
// Connecting the MySQL database


// Step 1: require 'mysql'
const mysql = require('mysql')
const config = require('./config')

// Step 2: create the connection and set the login details
const mysqlConnection = mysql.createConnection({
    host: 'localhost',
    user: config.DATABASE_USER,
    password: config.DATABASE_PASSWORD,
    database:'mydatabase',
    multipleStatement: true
})

// Step 3: run the connection and show the error or success message in the terminal when completion
mysqlConnection.connect((err) => {
    if(!err) {
        console.log('Connected!')
    } else {
        console.log('Connection failed!' + err)
    }
})

// Step 4: export the connection module
module.exports = mysqlConnection