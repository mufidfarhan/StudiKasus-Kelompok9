<?php
	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	require_once('../../config/database.php');

	if (isset($_POST['customer_id']) && isset($_POST['product_id']) && isset($_POST['total_price']) && isset($_POST['payment_method'])) {
		$customer_id = $_POST['customer_id'];
		$product_id = $_POST['product_id'];
		$total_price = $_POST['total_price'];
		$payment_method = $_POST['payment_method'];

		$sql = $conn->prepare("INSERT INTO order_list (customer_id, product_id, total_price, payment_method) VALUES (?, ?, ?, ?)");
		$sql->bind_param('iiis', $customer_id, $product_id, $total_price, $payment_method);
		$sql->execute();

		if ($sql) {
			echo json_encode(array('RESPONSE' => 'SUCCESS'));
		}else {
			echo "FAILED";
		}
	} else {
		echo "FAILED";
	}
?>