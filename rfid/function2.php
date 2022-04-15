<?php 
//connection
include 'conn.php';

// INSERT FUNCTION and UPDATE FUNCTION

$rfid2 = $_REQUEST['rfid'];
$plate_number2 = $_REQUEST['p_no'];
$name2= $_REQUEST['name'];
$b_date2 = $_REQUEST['b_date'];
$address2 = $_REQUEST['address'];
$cp_no2 = $_REQUEST['cp_no'];
$img_src2 = $_REQUEST['img_src'];

// Check if variables are not null
if ($rfid2 !== "" && $plate_number2 !== "" && 
	$name2 !== "" && $b_date2 !== "" && $address2 !== "" 
	&& $cp_no2 !== "" && $img_src2 !== "") {

	// Selecting the RFID on the database
	$sql_s = "SELECT * FROM tbl_info WHERE rfid = '$rfid2'";
	$result = mysqli_query($conn, $sql_s);

	// Check if the rfid have info
	if (mysqli_num_rows($result) > 0) {
		while ($row = mysqli_fetch_assoc($result)) {

			// Check if there's any changes
			if ($plate_number2 !== $row['plate_number'] 
				|| $name2 !== $row['name'] || $b_date2 !== $row['b_date'] 
				|| $address2 !== $row['address'] || $cp_no2 !== $row['cp_no'] 
				|| $img_src2 !== $row['img_src']) {

				// UPDATE FUNCTION
				$sql_u = "UPDATE tbl_info SET plate_number = '$plate_number2', 
				name = '$name2', b_date = '$b_date2', address = '$address2', 
				cp_no = '$cp_no2', img_src = '$img_src2' WHERE rfid='$rfid2'";

				if (mysqli_query($conn, $sql_u)) {
					echo "Record updated successfully";
				}else {
					echo "Error updating record: " . mysqli_error($conn);		
				}
			}else {
				echo "Please make a changes";
			}		
		}
	}else{		
		// INSERT FUNCTION
		$sql_i = "INSERT INTO tbl_info (rfid, plate_number, name, 
			b_date, address, cp_no, img_src) VALUES ('$rfid2', 
			'$plate_number2', '$name2', '$b_date2', '$address2', 
			'$cp_no2', '$img_src2')";

		if (mysqli_query($conn, $sql_i)) {
			echo "New record created successfully";
		}else {
			echo "Error: " . $sql_i . "<br>" . mysqli_error($conn);
		}
	}
}else{
		echo "Please fill up all the text field...";
	}

mysqli_close($conn);

?>