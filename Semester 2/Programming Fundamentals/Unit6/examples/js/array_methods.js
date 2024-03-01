/*
	This is the JavaScript code for
	"Example: Array Methods"
	File: /unit6/examples/example_array_methods.html
*/

// your function declaration for isPalindrome()  goes here
// Rememer - it must take in the word and determine
// if it's a palendrome. It can't ask for input
// and it can't display any output. It must
// only return true or false. True if it's a palendrome
// and false if it's not. 


// Then your main program starts here.
function isPalindrome(userWord) {
  var retVal;
 
  var userWordArray = userWord.split("");
  var userWordArrayReverse = userWord.split("").reverse();
 
  retVal = userWordArray.join("") === userWordArrayReverse.join("");
 
  return(retVal);
}

// variables
var message;
var userWord;
// prompts
userWord = prompt("Enter a word to find out if it is a palindrome.");
// logic
if (isPalindrome(userWord)) {
  message = "The word \"" + userWord + "\" is a palindrome.";
} else {
  message = "The word \"" + userWord + "\" is not a palindrome.";
}
// output
document.write(message);

document.write("\nThe JavaScript file that produces this output is: " + "\"/unit6/examples/js/array_methods.js\"");

