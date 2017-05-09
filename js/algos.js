
// -Create a function called 'longestPhrase' that takes an array of phrases as an arguement
//   -Create a variable called 'longestString' to store the first string from the array
//   -For each string of the array:
//     -If the current string's length is greater than 'longestString':
//       -Store current string in 'longestString'
//   -Print 'longestString'

function longestPhrase(phrases) {
  var longestString = phrases[0];

  for (var i = 1; i < phrases.length; i++) {
    if (phrases[i].length > longestString.length) {
      longestString = phrases[i];
    }
  }
  return longestString;
}

// -Create a function called 'compareObjects' that takes two objects as an arguement
//   -Create a varibale called 'matchDetected' with the value 'false'
//   -For each key in objectOne:
//     -For each key in objectTwo:
//       -If the current objectOne key is equal to the current objectTwo key:
//         -Set 'matchDetected' to 'true'
//   -Print 'matchDetected'

function compareObjects(objectOne, objectTwo) {
  var matchDetected = false;

  for (var x = 0; x < objectOne.length; x++) {
    console.log(objectOne);
    for (var y = 0; y < objectTwo.length; y++) {
      if (objectOne[x] == objectTwo[y]) {
        matchDetected = true;
      }
    }
  }
  return matchDetected;
}

// -Create a function called 'randomData' that takes an integer as an arguement
//   -Create an empty array called 'wordBank'
//   -Create a string of possible letters
//   -For as many times as the number of the integer is:
//     -Generate a random word that is between 1 and 10 characters long
//     -Add random word to 'wordBank'
//   -Print 'wordBank'

function randomData(numberOfWords) {
  var wordBank = [];
  var letters = "abcdefghiklmnopqrstuvwxyz";

  for (numberOfWords; numberOfWords - 1 >= wordBank.length;) {
    var randomWord = "";
    var wordLength = Math.floor(Math.random() * 9)+1; // Generates a number 0-9 and adds 1 to get 1-10

    for (var i = 0; i < wordLength; i++) {
      var letterIndex = Math.floor(Math.random() * 25); // Picks a random index for letters array
      randomWord += letters.substring(letterIndex, letterIndex+1); // Adds letter to string
    }
    wordBank.push(randomWord);
  }
  console.log(wordBank);
  return wordBank
}

// Driver Code
// longestPhrase(["long phrase","longest phrase","longer phrase"]);
// compareObjects({age: 54}, {age: 54});

console.log(longestPhrase(randomData(10)));
