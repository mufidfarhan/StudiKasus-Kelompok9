<?php
	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	require_once('../../config/database.php');

	if (isset($_POST['username']) && isset($_POST['email']) && isset($_POST['name']) && isset($_POST['password']) && isset($_POST['phone_number'])) {
		$username = $_POST['username'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$name = $_POST['name'];
		$phone_number = $_POST['phone_number'];

		$sql = $conn->prepare("INSERT INTO users (username, email, name, password, phone_number) VALUES (?, ?, ?, ?, ?)");
		$sql->bind_param('ssssi', $username, $email, $name, $password, $phone_number);
		$sql->execute();
		
		if ($sql) {
			echo json_encode(array('RESPONSE' => 'SUCCESS'));
		} else {
			echo "FAILED";
		}
	} else {
		echo "FAILED";
	}
?>