<?php 
//create connection
$conn = mysqli_connect("localhost", "root", "", "test_rfid");

//check connection
if (!$conn) {
	die("Connection failed...". mysqli_connect_error());
}

?>