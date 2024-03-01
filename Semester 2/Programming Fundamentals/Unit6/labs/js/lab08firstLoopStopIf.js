/*
  This is the JavaScript code for
  "Lab 08: Stopping Loops IF"
  File: /unit6/labs/lab08firstLoopStopIf.html
*/
function lab08firstLoopStopIf() {
  // Your code goes in here. 

//variable declaration and definition
var total = 0;
var userNum = 1;

//while loop for user to enter numbers greater than 0 or 0 to quit. Converting user prompt to number
while (userNum > 0) {
  
  userNum = prompt("Enter a number that's greater than 0. Enter 0 to quit.");
  userNum = Number(userNum);
  
  if (userNum > 0) {
    //outputting number entered and adding user input to total
      document.write("Number entered: " + userNum + "\n");
      total = total + userNum;
  } else {
    //outputting total once user has entered all inputs
    document.write("Total of all numbers entered: " + total + "\n");
  }
  
 }
}

//Calling function and outputting goodbye
lab08firstLoopStopIf();
document.write("Good bye!");