<?php 
	$conn = mysqli_connect("localhost", "root", "", "mnhs_content_checklist_db");
	if (!$conn) {
		die("Connection failed...". mysqli_connect_error());
	}
?>