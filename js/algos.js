
// -Create a function called 'longestPhrase' that takes an array of phrases as an arguement
//   -Create a variable called 'longestString' to store the first string from the array
//   -For as long as 'i' is less than the length of the array:
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
  console.log(longestString);
}
longestPhrase(["long phrase","longest phrase","longer phrase"]);
