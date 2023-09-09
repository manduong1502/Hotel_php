<?php
	$host = "localhost";
	$user = "root";
	$password = "";
	$database = "db_poseidon_hotel";

	// Create connection
	$conn = mysqli_connect($host, $user, $password, $database);
	mysqli_set_charset($conn, 'UTF8');
?>