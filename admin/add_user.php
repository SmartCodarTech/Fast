<?php
	include 'includes/session.php';

	if(isset($_POST['submit'])){
		$username = $_POST['username'];
		$password = $_POST['password'];
		$confirm_password =$_POST['confirm_password'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$created_on= date("Y=m=d");
		$filename = $_FILES['photo']['name'];
		if(!empty($filename)){
			move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);	
		}

		$sql = "INSERT INTO `admin`(`username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES ('$username','$password','$firstname','$lastname','$photo','$created_on');

		if($conn->query($sql)){
			$_SESSION['success'] = 'Admin added successfully';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Fill up add form first';
	}

	header('location: user.php');
?>