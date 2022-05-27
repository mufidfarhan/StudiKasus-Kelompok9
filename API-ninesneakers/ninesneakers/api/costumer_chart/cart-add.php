<?php
	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	require_once('../../config/database.php');

	if (isset($_POST['customer_id']) && isset ($_POST['product_id']) && isset ($_POST['quantity'])) { 
		$customer_id = $_POST['customer_id'];
		$product_id = $_POST['product_id'];
		$quantity = $_POST['quantity'];

		$sql = $conn->prepare("INSERT INTO customer_chart(customer_id, product_id, quantity) VALUES (?, ?, ?)");
		$sql->bind_param('iii', $customer_id, $product_id, $quantity);
		$sql->execute();

		if ($sql) {
			echo json_encode(array('RESPONSE' => 'SUCCESS'));
		} else {
			echo "FAILED";
		}
	} else {
		echo "FAILED" ;
	}
?>