<?php
//Connection
include 'conn.php';

$rfid_request = $_REQUEST['rfid'];
$date_request = "";
$time_request = "";
$insert_update_query_response = "";

$tbl_info_sql_select = "SELECT * FROM tbl_info WHERE rfid = '$rfid_request'";
$tbl_info_select_result = mysqli_query($conn, $tbl_info_sql_select);

if (mysqli_num_rows($tbl_info_select_result) > 0) {
	while ($tbl_info_select_row = mysqli_fetch_assoc($tbl_info_select_result)) {
		$p_no = $tbl_info_select_row["plate_number"];
		$name = $tbl_info_select_row["name"];
		$b_date = $tbl_info_select_row["b_date"];
		$address = $tbl_info_select_row["address"];
		$cp_no = $tbl_info_select_row["cp_no"];
		$img_src = $tbl_info_select_row["img_src"];	
		$btn = "Update";

		$date_request = $_REQUEST['date'];
		$time_request = $_REQUEST['time'];

		$tbl_record_sql_select = "SELECT * FROM tbl_record WHERE rfid='$rfid_request' && c_date='$date_request'";
		$tbl_record_select_result = mysqli_query($conn, $tbl_record_sql_select);

		if (mysqli_num_rows($tbl_record_select_result) > 0) {
			while($rbl_record_select_row = mysqli_fetch_assoc($tbl_record_select_result)) {
				if ($rbl_record_select_row['time_in'] !== $time_request) {

					$tbl_record_sql_update = "UPDATE tbl_record SET time_out = '$time_request' WHERE
								rfid = '$rfid_request' && c_date = '$date_request'";

					//mysqli_query($conn, $tbl_record_sql_update);
					if (mysqli_query($conn, $tbl_record_sql_update)) {
						$insert_update_query_response = "Time out Updated Successfully";
					}else {
						$insert_update_query_response = "Error Updating Time out: " . mysqli_error($conn);
					}
				}
			}
		}else {
			// Insert record to tbl_record
			$tbl_record_sql_insert = "INSERT INTO tbl_record (rfid, c_date, time_in) VALUES ('$rfid_request', '$date_request', '$time_request')";

			//mysqli_query($conn, $tbl_record_sql_insert);
			if (mysqli_query($conn, $tbl_record_sql_insert)) {
				$insert_update_query_response = "New Time in record Created Successfully";
			}else {
				$insert_update_query_response = "Error: " . $tbl_record_sql_insert . "<br>" . mysqli_error($conn);
			}
		}
		
	}

}else {
	$p_no = "";
	$name = "";
	$b_date = "";
	$address = "";
	$cp_no = "";
	$img_src = "images/user.jpg";
	$btn = "Register";
}

mysqli_close($conn);

$arr = array("$p_no", "$name", "$b_date", "$address", "$cp_no", "$img_src", "$btn", "$insert_update_query_response");	
$myJSON = json_encode($arr);
echo $myJSON;

?>