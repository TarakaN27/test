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

$("#phone").keyup(function() { 
	var phone = $("#phone").val(); 
    $("#phone").val(phone.replace("+","")); 
});
$("#zayavka-form").on("submit", function(){	
	$.ajax({
		type: "POST",
		url: "mail.php",
		data: $("#zayavka-form").serialize(),
		dataType: "json",
		success: function(data){
			if(data.result == 'success'){   
				$('#zayavka-form').html("<span class='success'>Ваша заявка успешно отправлена</span>");
			}else{
				$('#zayavka-form .error').hide();
				$('#zayavka-form .error_input').removeClass('error_input');
				for(var errorField in data.text_error){
					$('#'+errorField+'_error').html(data.text_error[errorField]);
					$('#'+errorField+'_error').show();
					$('#'+errorField).addClass('error_input');                      
				}
			}
		}
	});	
	return false;
});