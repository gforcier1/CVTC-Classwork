/*
  This is the JavaScript code for
  "Example: Unknown Loop Count"
  File: /unit6/examples/unknownLoopCount.html
*/
function unknownLoopCount() {
  var cumulativeTotal = 0;
  var message = "Good bye!";
  var numberIn;
 
  while (numberIn !== "0") {
    numberIn = prompt("Enter a number (0 to quit).");
    document.write("Number entered:  " + numberIn + "<br>");
    cumulativeTotal += Number(numberIn);
  }
 
  document.write("Total of all numbers entered:  " + cumulativeTotal);
  document.write("<br>");
  document.write(message);

  document.write("The JavaScript file for this page is: " + "\"/unit6/examples/js/unknownLoopCount.js\"");
}

unknownLoopCount();
