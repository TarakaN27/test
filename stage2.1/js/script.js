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

function changeAlbum(album_id, change_album_id){
	fetch('http://jsonplaceholder.typicode.com/albums/'+change_album_id)
	.then((response) => response.json())
	.then(function(album_title){
		fetch('http://jsonplaceholder.typicode.com/photos?albumId='+change_album_id)
			.then((response) => response.json())
			.then(function(album_photo){
				if(change_album_id <= 1) {
					$(".btn_change_album").children(".prev").parents().prop('disabled', true);
				} else {
					$(".btn_change_album").children(".prev").parents().prop('disabled', false);
				}
				if (album_photo.length > 0) {
					$(".album_content").empty();
					for(var k in album_photo) {
						var albumId = album_photo[k].albumId;
						var title = album_title.title;
						var url = album_photo[k].url;
						var thumbnailUrl = album_photo[k].thumbnailUrl;
						$(".album_header").html(title);
						$(".album_header").attr("data-album-id", albumId);
						$(".album_content").append('<div class="album_item"><img src="'+thumbnailUrl+'" data-full="'+url+'"></div>');
					}
				}
			});
	});
};

$(".btn_change_album").click(function(){
	var album_id = +$(".album_header").attr("data-album-id");
	var flang = +$(this).attr("data-change-album");
	var change_album_id = album_id+flang;
	changeAlbum(album_id, change_album_id);
	return false;
});

changeAlbum(1, 1);
