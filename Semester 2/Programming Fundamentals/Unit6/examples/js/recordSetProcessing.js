/*
  This is the JavaScript code for
  "Example: Record Set Processing"
  File: /unit6/examples/lab06recordSetProcessing.html
*/
function recordSetProcessing() {
  // Declare Variables
  var currentNumber;
  var currentDescription;
  var currentStockAmount;
  var itemRecords;
  var totalRecords = 0;
  var totalStockAmount = 0;
  // Open the Inventory Items Records and make them
  // available to the script
  itemRecords = openInventoryItemsRecords();
  document.write("The Inventory Items Record Set:\n");
  // Read the next record, test to see if there
  // is a next record and then output it
  while (itemRecords.readNextRecord()) {
    currentNumber      = itemRecords.getItemNumber();
    currentDescription = itemRecords.getItemDescription();
    currentStockAmount = itemRecords.getItemStockAmount();
    currentStockAmount = Number(currentStockAmount);
    document.write(currentNumber + ", " + currentDescription  + ", " + currentStockAmount + ".\n");
    totalStockAmount += currentStockAmount;
    totalRecords++;
  }  
  //ADD CODE HERE to display the two additional lines of output
  document.write("\nTotal Inventory Records: " + totalRecords + "\n");
  document.write("Total Amount of Items in Inventory: " + totalStockAmount);

  //ADD CODE HERE to display the two additional lines of output
  document.write("\nThe JavaScript file that produced this output is: " +
                 "\"/unit6/examples/js/recordSetProcessing.js\"");
}


recordSetProcessing();
