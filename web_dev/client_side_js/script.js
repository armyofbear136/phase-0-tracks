function addWhiteBorder(event) {
	console.log("setting white border")
  event.target.style.border = "2px solid white";
}
function addGreenBorder(event) {
	console.log("setting green border")
  event.target.style.border = "2px solid green";
}

var photo = document.getElementById("pony-pic");
photo.addEventListener("mouseover", addGreenBorder);
photo.addEventListener("mouseout", addWhiteBorder);