<?php
	$conn = new mysqli('localhost', 'root', '', 'fast');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>