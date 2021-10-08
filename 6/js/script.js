function opacity_block(class_elem, time){
	var elms = document.getElementsByClassName(class_elem);
	var i=1;
	[].forEach.call(elms, el => {
		setTimeout(function () {
			el.classList.add("show");
		}, i * time);
		i++;
	});
}
opacity_block("block-item", 300);