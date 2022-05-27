<?php
	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	require_once('../../config/database.php');

	$data = json_decode(file_get_contents("php://input"));

	if ($data->id != null) {
		$id = $data->id;
		$brand_name = $data->brand_name; 
		$product_name = $data->product_name;
		$size = $data->size;
		$price = $data->price;
		$color = $data->color;
    $description = $data->description;

		$sql = $conn->prepare("UPDATE products SET brand_name=?, product_name=?, size=?, price=?, color=?, description=? WHERE id=?");
		$sql->bind_param('ssiissi', $brand_name, $product_name, $size, $price, $color, $description, $id);
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