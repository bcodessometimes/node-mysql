var mysql = require("mysql");
var inquirer = require("inquirer");


var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "rootbanana",
    database: "bamazonDB"
  });

  connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    displayItems();
    });



  function start() {
  inquirer.prompt ([
    {
        type: "list",
        name: "initialOption",
        message: "What would you like to do?",
        choices: ["Select item by ID", "Bid on an Item", "Exit"]
      }
]).then(function(answer){
    console.log(answer.initialOption);
    if (answer.initialOption === "Post an Item") {
        postItem();
    } else if (answer.initialOption === "Bid on an Item") {
        bidItem();
    } else {
        console.log("Goodbye")
        connection.end();
    }
})
}

function displayItems() {
  var itemsArray = [];
  connection.query("SELECT * FROM products", function (err, res) {
      if(err) throw err;
      for(var i = 0; i < res.length; i++) {
          itemsArray.push(res[i].id.toString())
          console.log(" ID #: " + res[i].id + " Name: " + res[i].product_name + " Department: " + res[i].department_name + " Price: " + res[i].price + " Available Quantity: " + res[i].stock_quantity)
      }
    })
  }