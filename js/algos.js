
// -Create a function called 'longestPhrase' that takes an array of phrases as an arguement
//   -Create a variable called 'longestString' to store the first string from the array
//   -For each string of the array:
//     -If the current string's length is greater than 'longestString':
//       -Store current string in 'longestString'
//   -Return 'longestString'

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
//   -Return 'matchDetected'

function compareObjects(objectOne, objectTwo) {
  var matchDetected = false;
  var counter = 0;

  for (var x = 0; x < Object.keys(objectOne).length; x++) {
    for (var y = 0; y < Object.keys(objectTwo).length; y++) {
      if (Object.keys(objectOne)[x] == Object.keys(objectTwo)[y]) {
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
//    -Assign a variable 'randomWord' to an empty string
//    -Assign a variable 'wordLength' to a number 1-10
//    -For the length of wordLength:
//      -Pick a random letter
//      -Add letter to 'randomWord' string
//    -Add random word to 'wordBank'
//  -Return 'wordBank'

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
  return wordBank
}

// Driver Code
console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
console.log(compareObjects({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(randomData(3));
console.log(longestPhrase(randomData(5)));
