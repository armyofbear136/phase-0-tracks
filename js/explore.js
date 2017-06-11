/*reverse method:
read in string from method
iterate through string backwards using a loop and length
store characters in a new 'backwards' string 
return/print backwards string*/
function reverse(word){
	var backwards = "";
	for (var x = word.length-1; x>=0; x--){
		backwards = backwards.concat(word[x]);
	}
	return backwards;
}
/*driver code*/
if (1 == 1){console.log(reverse("domino"));}