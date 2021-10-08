<?php
function getAlbum($albumId){
	$url='http://jsonplaceholder.typicode.com/photos?albumId='.$albumId;
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_USERAGENT, 'rohit');
	$result = curl_exec($ch);
	curl_close($ch);
	return $result;
}
function getAlbumTitle($albumId){
	$url='http://jsonplaceholder.typicode.com/albums/'.$albumId;
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_USERAGENT, 'rohit');
	$result = curl_exec($ch);
	curl_close($ch);
	$resultArray = json_decode($result);
	return $resultArray;
}

if(isset($_POST["album_id"])) {
	$id = $_POST["album_id"];
	$result = [
		"title"=>getAlbumTitle($id)->title,
		"album"=>getAlbum($id)
	];
	$result = json_encode($result);
	print_r($result);
}

 ?>