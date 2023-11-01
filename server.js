
// Building a Server

// Step 0: download the modules:
// npm install express express-handlebars body-parser mysql

// Step 1: require the 'express', 'body-parser', and the routes you created
const express = require('express')
const bodyParser = require('body-parser')
const PeopleRoutes = require('./routes/people')

// Step 2: build a server
const app = express()

// Step 3: display data from database on localhost:3000/people
// PeopleRoutes was a module that connected the mydatabase, the database I created in MySQL Command Line
// When getting the router of 'localhost:3000/people', run `PeopleRoutes`
app.use('/people', PeopleRoutes)

// Step 4: make results / data from the table of `mydatabase` become a json file
app.use(bodyParser.json())

// Step 5 (write it when doing step 2): listen to 'localhost:3000'
app.listen(3000)

// Step 6: create a file of 'connection.js' to connect `mydatabase`
// (go to connection.js to see more steps)

// Step 7: create a foleder and name it 'routers'
// create a file and name it 'people.js'
// (go to people.js to see more steps)

// Step 7: start the server using nodemon by typing below codes in the terminal or cmd
// npm nodemon server.js