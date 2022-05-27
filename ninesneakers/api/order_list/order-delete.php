<?php
	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	require_once('../../config/database.php');

	$data = json_decode(file_get_contents("php://input"));

	if ($data->id != null) {
		$id = $data->id;
		
		$sql = $conn->prepare("DELETE FROM order_list WHERE id=?");
		$sql->bind_param("i", $id);
		$sql->execute();

		if($sql){
			echo json_encode(array('RESPONSE' => 'SUCCESS'));
		}else{
			echo json_encode(array('RESPONSE' => 'FAILED'));
		}
	} else {
		echo "FAILED";
	}
?>