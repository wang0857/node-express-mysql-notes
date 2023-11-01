
// Retrieving data from `mydatabase`

// Step 1: require 'express' and 'mysqlConnection' modules
const express = require('express')
const mysqlConnection = require('../connection')

// Step 2: create a router listener
const Router = express.Router()

// Step 3: run `query` (a built-in function in 'mysql') when reaching the route of '/'
// The first parameter in `query` is the codes of MySQL. e.g. SELECT * FROM [table].
// The second parameter in `query` is the callback funciton with tree parameters: err, rows, fields
Router.get('/', (req, res) => {
    mysqlConnection.query('SELECT * FROM employees', (err, rows, fields) => {
        if (!err) {
            res.send(rows)
        } else {
            console.log(err)
        }
    })
})

// Step 4: export the Router module
module.exports = Router