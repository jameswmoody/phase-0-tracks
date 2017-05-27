// var photo = document.getElementById('pizza')

// function enlargePizzaPhoto () {
//   photo.width = '300';
// }
//
// var normalizePizzaPhoto = function () {
//   var photo = document.getElementById('pizza')
//   photo.width = '100';
// }
//


function enlargePhoto (event) {
  event.target.width = '300';
  var para = document.createElement("p");
  var node = document.createTextNode("Doesn't this look delicious!");
  para.appendChild(node);

  console.log('Photo is enlarged when user mouses over image and adds paragraph')

  var element = document.getElementById("food");
  element.appendChild(para);
}

function normalizePhoto (event) {
  event.target.width = '100';
}

var pizza = document.getElementById('pizza')
var hotDog = document.getElementById('hot-dog')
var italianBeef = document.getElementById('italian-beef')



pizza.addEventListener('mouseover', enlargePhoto);
pizza.addEventListener('mouseleave', normalizePhoto);

hotDog.addEventListener('mouseover', enlargePhoto);
hotDog.addEventListener('mouseleave', normalizePhoto);

italianBeef.addEventListener('mouseover', enlargePhoto);
italianBeef.addEventListener('mouseleave', normalizePhoto);
