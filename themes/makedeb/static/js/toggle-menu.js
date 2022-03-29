"use strict";

function hideItems(item) {
	const target = item.target;
	const targetClass = Array.from(target.classList).filter(word => word !== "active")[0];
	const children = target.parentElement.children;

	for (item=0; item < children.length; item++) {
		var curItem = children[item];
		var itemClass = Array.from(curItem.classList).filter(word => word != "active")[0];
		
		// Hide any divs that aren't on the currently clicked class, and show the clicked one.
		var toggleItem = document.querySelector(`.${itemClass}:not(.toggle-menu-button)`);

		if (targetClass !== itemClass) {
			curItem.classList.remove("active");
			toggleItem.style.display = "none";
		} else {
			curItem.classList.add("active");
			toggleItem.style.display = "block";
		};
	};

};

document.addEventListener("DOMContentLoaded", function() {
	const toggleMenus = document.querySelectorAll(".toggle-menu");

	for (var toggleMenu=0; toggleMenu < toggleMenus.length; toggleMenu++) {
		var toggleMenuItems = toggleMenus[toggleMenu].children;

		for (var toggleMenuItem=0; toggleMenuItem < toggleMenuItems.length; toggleMenuItem++) {
			var target = toggleMenuItems[toggleMenuItem];
			target.addEventListener("click", hideItems);
		};
	};
});
