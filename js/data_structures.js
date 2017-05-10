var horseColors = ["cerulean", "magenta", "egg shell white", "beige"];
var horseNames = ["Walker", "Texas Ranger", "Epona", "Steve"];
horseColors.push("Lemon yellow");
horseNames.push("Horsee");
console.log(horseColors);
console.log(horseNames);
//new empty object to be filled
var namesColors = {};
for(i=0; i < horseNames.length; i++){
    // James and I found a randomize method to give the horses unpredicatable colors!
    namesColors[horseNames[i]] = horseColors[Math.floor(Math.random()*horseColors.length)];
};
console.log(namesColors);
var car = {model: 'Corvette', 'year': 1972, working: true}
function Car(name, year, working){
    this.name = name;
    this.year = year;
    this.working = working;
    this.drive = function(){console.log("Car goes vroooom!");};
    console.log("Car initialized");
}
function printCarAdvertisement(carVar){
    console.log("Enjoy your new " + carVar.year + " " + carVar.name + ". Working: " + carVar.working);
    if (carVar.working) {
        carVar.drive();
    }else{
        console.log("You might need repairs on this bad boy.");
    }
    console.log("-----------");
}
console.log("Let's make a car.");
var newCar = new Car("Viper", 2011, true);
var newCar2 = new Car("Suburban", 1996, false);
var newCar3 = new Car("Prius", 2005, true);
printCarAdvertisement(newCar);
printCarAdvertisement(newCar2);
printCarAdvertisement(newCar3);
