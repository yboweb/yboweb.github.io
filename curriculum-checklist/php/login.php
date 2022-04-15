<?php
include 'conn.php';

$username = $_REQUEST['username'];
$password = $_REQUEST['password'];

if ($username !== "" && $password !== "") {

	$sql = "select * from tbl_users where username='$username'";
	$result = mysqli_query($conn, $sql);

	if (mysqli_num_rows($result) > 0) {
		while ($row = mysqli_fetch_assoc($result)) {			
			if ($row["username"] === $username && $row["password"] === $password) {						
				echo "true";				
			}else {				
				echo "Incorrect password...";				
			}
		}
	} else {
		echo "Incorrect username...";
	}

}else {
	echo "Please fill in the needed information...";
}

mysqli_close($conn);
?>