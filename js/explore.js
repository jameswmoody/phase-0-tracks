// -Create a function called 'reverse' that take 1 string argument
//   -Declare a variable called 'reverseString'
//   -For each letter in the string while 'i' is equal to the string length - 1:
//     -Add letter to 'reverseString'
//     -Subtract 'i' by one
//   -Return 'reverseString'

function reverse(string) {
  var reverseString = ""
  for (var i = string.length - 1; i >= 0; i--) {
    reverseString += string[i]
  }
  return reverseString
}

var newString = reverse("hello");
var jamesIsGreat = true

if (jamesIsGreat) {
  console.log(newString);
}
