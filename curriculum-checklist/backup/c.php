<?php
	include 'conn.php';
	
	$strand = $_POST['svalue'];
	$ulrn = $_POST['ulrn'];
	
	//check if there's ulrn in database
	$sql = "select * from tbl_student_info where ulrn='$ulrn'";
	$result = mysqli_query($conn, $sql);
	
	if (mysqli_num_rows($result) > 0) {
		//Checklist sql
		$sql2 = "select * from tbl_".$strand;
		$result2 = mysqli_query($conn, $sql2);

		if (mysqli_num_rows($result2) > 0) {
			while ($row2 = mysqli_fetch_assoc($result2)) {
				$sql3 = "select * from tbl_student_subjects where ulrn='$ulrn'";
				$result3 = mysqli_query($conn, $sql3);

				//fix multiple show of subject
				if (mysqli_num_rows($result3) > 0) {
					while($row3 = mysqli_fetch_assoc($result3)){

						if ($row3['s1'] == $row2['subjects'] || $row3['s2'] == $row2['subjects'] || 
						$row3['s3'] == $row2['subjects'] || $row3['s4'] == $row2['subjects'] || 
						$row3['s5'] == $row2['subjects'] || $row3['s6'] == $row2['subjects'] || 
						$row3['s7'] == $row2['subjects'] || $row3['s8'] == $row2['subjects'] || 
						$row3['s9'] == $row2['subjects'] || $row3['s10'] == $row2['subjects']) 
						{ 	//regardless of semester
							
							//per sem >= 75 passed (if no 1st sem - 4th sem = "" => no record)

							//1st sem Grade 11
							if(($row3['s1_1'] >= 75 && $row2['subjects'] == $row3['s1']) ||
								($row3['s2_1'] >= 75 && $row2['subjects'] == $row3['s2']) ||
								($row3['s3_1'] >= 75 && $row2['subjects'] == $row3['s3']) ||
								($row3['s4_1'] >= 75 && $row2['subjects'] == $row3['s4']) ||
								($row3['s5_1'] >= 75 && $row2['subjects'] == $row3['s5']) ||
								($row3['s6_1'] >= 75 && $row2['subjects'] == $row3['s6']) ||
								($row3['s7_1'] >= 75 && $row2['subjects'] == $row3['s7']) ||
								($row3['s8_1'] >= 75 && $row2['subjects'] == $row3['s8']) ||
								($row3['s9_1'] >= 75 && $row2['subjects'] == $row3['s9']) ||
								($row3['s10_1'] >= 75 && $row2['subjects'] == $row3['s10'])) 
							{
								echo "<tr bgcolor='#99ff99'><td><input type='checkbox' checked></td>". 
								"<td class='subj'>". $row2["subjects"]. "</td>".
								"<td>". $row2["hours"]. "</td>".
								"<td ><input type='checkbox' class='get-subj' checked></td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj'></td></tr>";
							}
							//2nd sem Grade 11
							else if(($row3['s1_2'] >= 75 && $row2['subjects'] == $row3['s1']) ||
									($row3['s2_2'] >= 75 && $row2['subjects'] == $row3['s2']) ||
									($row3['s3_2'] >= 75 && $row2['subjects'] == $row3['s3']) ||
									($row3['s4_2'] >= 75 && $row2['subjects'] == $row3['s4']) ||
									($row3['s5_2'] >= 75 && $row2['subjects'] == $row3['s5']) ||
									($row3['s6_2'] >= 75 && $row2['subjects'] == $row3['s6']) ||
									($row3['s7_2'] >= 75 && $row2['subjects'] == $row3['s7']) ||
									($row3['s8_2'] >= 75 && $row2['subjects'] == $row3['s8']) ||
									($row3['s9_2'] >= 75 && $row2['subjects'] == $row3['s9']) ||
									($row3['s10_2'] >= 75 && $row2['subjects'] == $row3['s10'])) 
							{ 
								echo "<tr bgcolor='#99ff99'><td><input type='checkbox' class='get-subj' checked></td>". 
								"<td class='subj'>". $row2["subjects"]. "</td>".
								"<td>". $row2["hours"]. "</td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj' checked></td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj'></td></tr>";
							}
							//3rd sem Grade 12
							else if(($row3['s1_3'] >= 75 && $row2['subjects'] == $row3['s1']) ||
									($row3['s2_3'] >= 75 && $row2['subjects'] == $row3['s2']) ||
									($row3['s3_3'] >= 75 && $row2['subjects'] == $row3['s3']) ||
									($row3['s4_3'] >= 75 && $row2['subjects'] == $row3['s4']) ||
									($row3['s5_3'] >= 75 && $row2['subjects'] == $row3['s5']) ||
									($row3['s6_3'] >= 75 && $row2['subjects'] == $row3['s6']) ||
									($row3['s7_3'] >= 75 && $row2['subjects'] == $row3['s7']) ||
									($row3['s8_3'] >= 75 && $row2['subjects'] == $row3['s8']) ||
									($row3['s9_3'] >= 75 && $row2['subjects'] == $row3['s9']) ||
									($row3['s10_3'] >= 75 && $row2['subjects'] == $row3['s10'])) 
							{ 
								echo "<tr bgcolor='#99ff99'><td><input type='checkbox' class='get-subj' checked></td>". 
								"<td class='subj'>". $row2["subjects"]. "</td>".
								"<td>". $row2["hours"]. "</td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj' checked></td>".
								"<td><input type='checkbox' class='get-subj'></td></tr>";
							}
							//4th sem Grade 12
							else if(($row3['s1_4'] >= 75 && $row2['subjects'] == $row3['s1']) ||
									($row3['s2_4'] >= 75 && $row2['subjects'] == $row3['s2']) ||
									($row3['s3_4'] >= 75 && $row2['subjects'] == $row3['s3']) ||
									($row3['s4_4'] >= 75 && $row2['subjects'] == $row3['s4']) ||
									($row3['s5_4'] >= 75 && $row2['subjects'] == $row3['s5']) ||
									($row3['s6_4'] >= 75 && $row2['subjects'] == $row3['s6']) ||
									($row3['s7_4'] >= 75 && $row2['subjects'] == $row3['s7']) ||
									($row3['s8_4'] >= 75 && $row2['subjects'] == $row3['s8']) ||
									($row3['s9_4'] >= 75 && $row2['subjects'] == $row3['s9']) ||
									($row3['s10_4'] >= 75 && $row2['subjects'] == $row3['s10'])) 
							{ 
								echo "<tr bgcolor='#99ff99'><td><input type='checkbox' class='get-subj' checked></td>". 
								"<td class='subj'>". $row2["subjects"]. "</td>".
								"<td>". $row2["hours"]. "</td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj' checked></td></tr>";
							}
							// No record, failed
							else {
								echo "<tr bgcolor='#99ff99'><td><input type='checkbox' class='get-subj' checked></td>". 
								"<td class='subj'>". $row2["subjects"]. "</td>".
								"<td>". $row2["hours"]. "</td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj'></td>".
								"<td><input type='checkbox' class='get-subj'></td></tr>";
							}							
						}else {
							echo "<tr><td><input type='checkbox'></td>". 
							"<td>". $row2["subjects"]. "</td>".
							"<td>". $row2["hours"]. "</td>".
							"<td><input type='checkbox'></td>".
							"<td><input type='checkbox'></td>".
							"<td><input type='checkbox'></td>".
							"<td><input type='checkbox'></td></tr>";
						}						
					}					
				}				
			}
		}
	}else {
		$strand = "";
		$ulrn = "";
	}	
	
?>
<script>
     $(".get-subj").click(function() {
			var ulrn_input = $("#ulrn").val();

            if(!this.checked) {				

                var subj = $(this).closest("tr")   // Finds the closest row <tr> 
                                    .find(".subj")     // Gets a descendent with class="get-subj"
                                    .text();         // Retrieves the text within <td>

                // alert(subj + " " + ulrn_input);      // Outputs the answer

				// Making a request
				var ajax = new XMLHttpRequest();
				
				ajax.open("GET", "d.php?ulrn=" + ulrn_input + "&subj=" + subj, true);
				ajax.send();

				ajax.onreadystatechange = function(){
					if (this.readyState == 4 && this.status == 200) {
						if(this.responseText != null){
							alert(this.responseText);
						}
						
					}
															
				}	
            }
        });
</script>