<?php
	header('Access-Control-Allow-Origin: *');
	header('Content-Type: application/json');

	require_once('../../config/database.php');

	if (isset($_GET['id'])) {
			$id  = $_GET['id'];
			$sql = $conn->prepare("DELETE FROM users WHERE id=?");
			$sql->bind_param('i', $id);
			$sql->execute();
			if ($sql) {
				header("location: ../../ninesnkrs-admin/users.php");
			} else {
				header("location: ../../ninesnkrs-admin/users.php");
			}
	} else {
		header("location: ../../ninesnkrs-admin/users.php");
	}
?>