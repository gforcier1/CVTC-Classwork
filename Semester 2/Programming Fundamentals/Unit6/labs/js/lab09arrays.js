/*
  This is the JavaScript code for
  "Lab 09: Arrays"
  File: /unit6/labs/lab10firstLoopStopIf.html
*/
function Arrays() {
  // Your code goes in here. 
//variable declaration
var names = [];
var entry = "";
var total = 0;

//while statement to prompt user for names until they're done
while (entry !== "done") {
  
  entry = prompt("Enter student username. Enter \"done\" when finished.");
  //if statement to push entry into names array
  if (entry !== "done") {
    names.push(entry);
  } else {
    //once user is done output total names entered and email address message
     document.write("You entered " + names.length + " usernames. Here are the email addresses:\n\n");
  }
  
}
//for statement to output names as email addresses
for (var index = 0; index < names.length; index++) {
  document.write(names[index] + "@student.cvtc.edu\n");
}

}
Arrays();
