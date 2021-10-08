function PopupOpen(name){
	var popupBg = document.querySelector('.popup__bg');
	var popup = document.getElementById(name);
	popupBg.classList.add('active');
	popup.classList.add('active');	
}
function PopupClose(name){
	var popupBg = document.querySelector('.popup__bg');
	var popup = document.getElementById(name);
	popupBg.classList.remove('active');
	popup.classList.remove('active');
}
document.addEventListener('click', (e) => {
	var popupBg = document.querySelector('.popup__bg');
	var popup = document.querySelector('.popup');
	if(e.target === popupBg) {
		popupBg.classList.remove('active');
		popup.classList.remove('active');
	}
});