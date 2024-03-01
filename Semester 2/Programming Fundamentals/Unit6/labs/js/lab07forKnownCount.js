/*
	This is the JavaScript code for
	"Lab 7: While Lab with Known Count"
	File: /unit6/labs/lab07forKnownCount.html
*/
function lab07forKnownCount() {
  // Your code goes in here. 

//variable declaration
var total = 0;
var seven = 7;

//for loop to display 7 times table from 1 to 20
for (var counter = 1; counter < 21; counter++) {
 
  total = seven * counter;
  document.write(seven + " x " + counter + " = " + total + "\n");
  
}

}

//calling function
lab07forKnownCount();
