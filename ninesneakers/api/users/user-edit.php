<?php
	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	require_once('../../config/database.php');

	$data = json_decode(file_get_contents("php://input"));

	if($data->id!=null){
		$id = $data->id;
		$username = $data->username;
		$email = $data->email;
		$name = $data->name;
		$password = $data->password;
		$phone_number = $data->phone_number;

		$sql = $conn->prepare("UPDATE users SET username=?, email=?, name=?, password=?, phone_number=? WHERE id=?");
		$sql->bind_param('ssssii', $username, $email, $name, $password, $phone_number, $id);
		$sql->execute();
		
		if($sql){
			echo json_encode(array('RESPONSE' => 'SUCCESS'));
		}else{
			echo json_encode(array('RESPONSE' => 'FAILED'));
		}
	}else{
		echo "FAILED";
	}
?>