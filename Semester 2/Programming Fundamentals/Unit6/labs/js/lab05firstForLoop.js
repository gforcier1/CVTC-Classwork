/*
  This is the JavaScript code for
  "Lab 5: Your First For Loop"
  File: /unit6/labs/lab05firstForLoop.html
*/
function lab05firstForLoop() {
  // Your code goes in here. 

//variable declaration
var userIn = "";

//For loop for prompting and displaying userIn 5 times

for (var counter = 0; counter < 5; counter++) {
    
    userIn = prompt("Enter something please.");
    document.write("You entered: " + userIn + "\n");
    
}
}

//calling function and outputting
lab05firstForLoop();
document.write("\nThanks for participating!");
