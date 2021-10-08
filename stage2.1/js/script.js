document.addEventListener('click', (e) => {
	var popupBg = document.querySelector('.popup__bg');
	var popup = document.querySelector('.popup');
	var close_popup = document.querySelector('.close-popup');
	if(e.target === popupBg || e.target === popup || e.target === close_popup) {
		popupBg.classList.remove('active');
	}
});
$('body').on('click', '.album_item', function(){
	var pic_full = $(this).children().attr('data-full');
	$(".popup__bg").addClass('active');
	$(".popup").css('background-image', 'url('+pic_full+')');
});
function checkAlbum(album_id, album_array){
	var result = {
		"album_id":0,
		"album_array":0
	};
	if(album_id > 1) {
		result["album_id"] = 1;
	}
	if(album_array["album"].length != 0) {
		result["album_array"] = 1;
	}
	return result;
};
function getAlbum(change_album_id){
	var ajax = $.ajax({
		type: "POST",
		async: false,
		url: "json.php",
		data: {"album_id": change_album_id},
		dataType: 'json',
		success: function(data){
			res = data;
		}
	});	
	return ajax.responseJSON;
};
function changeAlbum(album_id, change_album_id){
	var album_array = getAlbum(change_album_id);
	var check_album = checkAlbum(change_album_id, album_array);
	if(check_album["album_id"] == 0) {
		$(".btn_change_album").children(".prev").parents().prop('disabled', true);
	} else {
		$(".btn_change_album").children(".prev").parents().prop('disabled', false);
	}
	if (check_album["album_array"] == 1) {
		$(".album_content").empty();
		var album = JSON.parse(album_array["album"]);
 		for(var k in album) {
			var albumId = album[k].albumId;
			var title = album_array["title"];
			var url = album[k].url;
			var thumbnailUrl = album[k].thumbnailUrl;
			$(".album_header").html(title);
			$(".album_header").attr("data-album-id", albumId);
			$(".album_content").append('<div class="album_item"><img src="'+thumbnailUrl+'" data-full="'+url+'"></div>');
		}
	}
};
$(".btn_change_album").click(function(){
	var album_id = +$(".album_header").attr("data-album-id");
	var flang = +$(this).attr("data-change-album");
	var change_album_id = album_id+flang;
	changeAlbum(album_id, change_album_id);
	return false;
});
changeAlbum(1, 1);
