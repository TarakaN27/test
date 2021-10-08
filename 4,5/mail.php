<?php
use PHPMailer\PHPMailer\PHPMailer;
require 'PHPMailer.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$errorContainer = [];
	$arrayPost = [];
	foreach($_POST as $key => $value){
		if($value == '' || !isset($value)){
			$errorContainer[$key] = 'Поле обязательно для заполнения';
		} else {
			$arrayPost[$key] = transform_input($value);
		}
	}
	if(!isset($_POST["checkbox"])) {
		$errorContainer["checkbox"] = 'Поле обязательно для заполнения';
	}
 	if(empty($errorContainer)){
		$mail = new PHPMailer();
		$mail->setFrom('test@domain.ru', 'Иван Иванов');
		$mail->addAddress('test@ya.ru', 'Вася Петров');
		$mail->Subject = 'Заявка';
		$mail->msgHTML("<html><body>
						<h1>Новая заявка</h1>
						<p>Имя: ".$arrayPost['name']."</p>
						<p>Email: ".$arrayPost['email']."</p>
						<p>Телефон: ".$arrayPost['phone']."</p>
						</html></body>");
		if ($mail->send()) {
		  echo json_encode(array('result' => 'success'));
		} else {
		  echo json_encode(array('result' => 'error', 'text_error' => $mail->ErrorInfo));
		}  
	}else{
		echo json_encode(array('result' => 'error', 'text_error' => $errorContainer));
	}
}
function transform_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    return $data;
}
?>