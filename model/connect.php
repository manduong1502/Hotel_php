<?php
	$host = "localhost";
	$user = "root";
	$password = "";
	// $database = "db_fashion_mylishop"; (chưa sửa database)

	// Create connection
	$conn = mysqli_connect($host, $user, $password, $database);
	mysqli_set_charset($conn, 'UTF8');
?>