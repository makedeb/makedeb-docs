"use strict";

document.addEventListener("DOMContentLoaded", function() {
	document.querySelector(".show-menu a").addEventListener("click", function() {
		document.querySelector(".docs-index").style.left = "0";
	});

	document.querySelector(".docs-index .arrow-left-icon").parentElement.addEventListener("click", function() {
		document.querySelector(".docs-index").style.left = "-100vh";
	});
});
