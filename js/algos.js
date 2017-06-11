/*define longestword method
read in array of words
pull each string out of the array individually
only store length and position of highest value
return longest word*/
function longestword(arrayofwords)
{
	var toplength = 0;
	var toppos = 0;
	for (var i = 0; i < arrayofwords.length; i++){
		if (arrayofwords[i].length > toplength){
			toplength = arrayofwords[i].length
			toppos = i;
		}
	}
	return arrayofwords[toppos];
}
function sharedpair(object1,object2){
	console.log(object1);
	for (var val in object1){
		for (var val2 in object2){
			console.log(val+"+"+val2);
			if (val == val2){
				return true;
			}
		}
	}
	return false;
}

function generatestrings(howmany){
	var array = [];
	for (var i = 0; i < howmany; i ++){
		newword = ""
		length = Math.floor((Math.random()*10+1));
		newword = Math.random().toString(36).substr(2,length);
		array.push(newword);
	}
	return array;
}
/*drivercode*/
var array1 = ["long phrase","longest phrase","longer phrase"];
var array2 = ["Rainbow Dash", "Pinkie Pie", "Apple Jack", "Rarity"];
var array3 = ["Periwinkle", "Pink", "Orange", "White"];
console.log(longestword(array1));
console.log(longestword(array2));
console.log(longestword(array3));
if (sharedpair({name: "Steven", age: 54}, {name: "Tamir", age: 54})){
	console.log("true!!!");
}
else{console.log("false");}
if (sharedpair({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})){
	console.log("true!!!");
}
else{console.log("false");}
if (sharedpair({name: "Steven", age: 54}, {animal: "Dog", legs: 3})){
	console.log("true!!!");
}
else{console.log("false");}
gstrings = generatestrings(10);
console.log(gstrings);
console.log(longestword(gstrings));