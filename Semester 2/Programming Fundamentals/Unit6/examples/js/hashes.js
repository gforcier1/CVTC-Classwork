/*
	This is the JavaScript code for
	"Example: Hashes"
	File: /unit6/examples/hashes.html
*/
 

function hashes() {
  // Your code goes in here. Remember, each {} needs
  // a comma between each one, but we DON'T have
  // a comma after the last hash!

  var people = [
    {
      "firstName": "Homer",
      "lastName": "Simpson",
      "age": 42
    },
    {
      "firstName": "Marge",
      "lastName": "Simpson",
      "age": 42
    },
    {
      "firstName": "Bart",
      "lastName": "Simpson",
      "age": 10
    },
    {
      "firstName": "Lisa",
      "lastName": "Simpson",
      "age": 8
    },
    {
      "firstName": "Maggie",
      "lastName": "Simpson",
      "age": 1
    }
  ];
  var counter;
 
  for (counter = 0; counter < 5; counter++) {
    document.write(people[counter]["firstName"]);
    document.write(" ");
    document.write(people[counter]["lastName"]);
    document.write("\n");
  }

  document.write("The JavaScript file for this page is: " + "\"/unit6/examples/js/hashes.js\"");
}

hashes();
