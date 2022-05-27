<?php
	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	require_once('../../config/database.php');

	if (isset($_POST['brand_name']) && isset($_POST['product_name']) && isset($_POST['price']) && isset($_POST['size']) && isset($_POST['color']) && isset($_POST['description'])) {
		$brand_name = $_POST['brand_name'];
		$product_name = $_POST['product_name'];
		$size = $_POST['size'];
		$price = $_POST['price'];
		$color = $_POST['color'];
    $description = $_POST['description'];

		$sql = $conn->prepare("INSERT INTO products (brand_name, product_name, price, size, color, description) VALUES (?, ?, ?, ?, ?, ?)");
		$sql->bind_param('ssiiss', $brand_name, $product_name, $price, $size, $color, $description);
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