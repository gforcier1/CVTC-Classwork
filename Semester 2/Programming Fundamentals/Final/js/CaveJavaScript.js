//This is the javascript for Text Adventure.html
// File: /Final/Text Adventure.html


//Main function
function goblinCave() {
  var playerName = prompt("Enter your name, wanderer:"); //declaring playerName variable and prompting the user for it
  var output = "";
  alert("Welcome, " + playerName + "! You behold a mighty cave with a large wooden board staked in front. You see strange etchings on the board that begin to transform as you gaze at them. They reveal a message to you. \"Guzzle from my chalice and be made rich\""); //introduction to the cave
  alert("You suddenly fall into unconciousness."); //cave introduction

  var totalGold = 0; // Variable to track total gold collected
  var loopCounter = 0; // Loop counter

  while (loopCounter < 2) { // Set the desired number of loops 2 in this case
    var answer = prompt("You wake inside of the cave and see three paths surrounding you. Which path do you choose? (left/right/center)");

    if (answer.toLowerCase() === "left") { //.toLowerCase ensures that answer will be lower case regardless of input
      answer = prompt("You follow the left path and come across a sleeping goblin. You see a chest just beyond it. What do you do? (kill/sneak/turn back)");

      if (answer.toLowerCase() === "kill") {
        alert("You slit it's throat while it's sleeping, but in the creature's death throes it wakes the hive. Goblins descend on you. You manage to kill 6 before they rip you apart. Game over.");
      } else if (answer.toLowerCase() === "sneak") {
        alert("You successfully sneak around the goblin and loot the chest. There are 50 gold pieces inside!");
        totalGold += 50; // Increase total gold by 50
      } else {
        alert("You turn back and hear a distant voice mutter, \"How boring.\" You explode. Game over.");
      }
    } else if (answer.toLowerCase() === "right") {
      answer = prompt("You take the right path and come upon a room inhabited by 5 goblins chanting in unison. They appear to be summoning something. What will you do? (fight/observe/escape)");

      if (answer.toLowerCase() === "fight") {
        alert("You attempt to stop the goblins before the ritual is complete. You barely manage, but you slay them all and find 100 gold scattered around the room.");
        totalGold += 100; // Increase total gold by 100
      } else if (answer.toLowerCase() === "observe") {
        alert("Your curiousity gets the better of you and you decide to observe the ritual. A grotesque amalgamtation of flesh is born and consumes every inhabitant inside the chamber. Including you. Game over.");
      } else {
        alert("A voice enters your mind and screeches \"COWARDICE COST ME EVERYTHING.\" You explode. Game over.  ");
      }
    } else if (answer.toLowerCase() === "center") {
      answer = prompt("You follow the central path and come across a blue hooded woman who offers you a drink from her chalice. What do you do? (drink/ignore/ask questions)");

      if (answer.toLowerCase() === "drink") {
        alert("You drink the potion and notice your skin begin to glow. The woman assures you of your safety. Your skin begins to feel scorching hot. You feel something forming underneath. Your skin grows hotter and begins to boil. The woman steps away from you as begin to writhe in agony. Your boils begin to pop but you notice that with every pop something round forces it's way out of your skin. Your skin boils and boils relentlessly. Pop. Pop. Pop. Pop. You curse at the woman in your final moments of conciousness. You think you see her smile as your vision fades. You collapse.");
        alert("You wake in a daze with no sign of the mysterious woman, but soon notice you're surrounded by gold pieces. You count 200 in total.");
        totalGold += 200; // Increase total gold by 200
      } else if (answer.toLowerCase() === "ignore") {
        alert("You ignore the hooded woman and continue on the path through the cave. You encounter an oasis with a pile of 100 gold beside it.");
        totalGold += 100; // Increase total gold by 100
      } else {
        alert("You ask the mysterious woman what the chalice does when you drink it. The woman says no more, but presents the chalice again. You ask again. She walks away leaving the chalice behind. You ask again... She is gone.");
        alert("You ask again. Only the chalice can hear you now. You ask again. Your voice begins to fade. You ask again. The chalice swallows you whole. Game over.");
      }
    } else {
      // In case of invalid entries alerting and continuing through the loop
      alert("Invalid choice. Be not afraid, choose your path.");
      continue; // Continue to the next iteration of the loop
    }

    loopCounter++; // Increment the loop counter
  }

  alert("Game over, " + playerName + " wakes outside of the cave with " + totalGold + " gold.");
}

// Calling function to start the game
goblinCave();
