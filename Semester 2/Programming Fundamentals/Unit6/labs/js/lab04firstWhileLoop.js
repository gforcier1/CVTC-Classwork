/*
  This is the JavaScript code for
  "Lab 4: Your First While Loop"
  File: /unit6/labs/lab04firstWhileLoop.html
*/
function lab04firstWhileLoop() {
  // Your code goes in here. 

//variable declaration
var counter = 0;
var userIn = "";

//while loop for prompting and displaying userIn 5 times

while (counter < 5) {
  userIn = prompt("Enter something please.");
  document.write("You entered: " + userIn + "\n");
  counter++;
}
}

//calling function and outputting
lab04firstWhileLoop();
document.write("\nThanks for participating!");
