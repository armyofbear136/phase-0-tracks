var ponies = ["Rainbow Dash", "Pinkie Pie", "Apple Jack", "Rarity"];
var colors = ["Periwinkle", "Pink", "Orange", "White"];
ponies.push("Fluttershy");
colors.push("Yellow");
var manesix = {name: ponies, color: colors};
console.log(manesix);

function Car(make, model, year){
	this.make = make;
	this.model = model;
	this.year = year;
	this.doesitstart = function() {console.log("Vroom!!!");};
}

var newcar = new Car("Fiat", "500 Sport", "2013");
console.log(newcar);
newcar.doesitstart();