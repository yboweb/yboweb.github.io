<?php 
    
    include "conn.php";

    $ulrn = $_REQUEST['ulrn'];
    $subj = $_REQUEST['subj'];
    $cvalue;    

    // echo 'ulrn: ' . $ulrn . ' subject: ' . $subj;
    //select the subjects tbl_student_subjects
    $sql = "select * from tbl_student_subjects where ulrn='$ulrn'";
    $result = mysqli_query($conn, $sql);

    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_assoc($result)){
            for($i = 1; $i < 11; $i++){                            
                if($row['s'.$i] == $subj){

                    //update                    
                    for($a = 1; $a < 5; $a++){
                        if($row['s'.$i.'_'.$a] >= 75){
                            //echo $row['s'.$i.'_'.$a];
                            $cvalue = 's'.$i.'_'.$a;
                            $sql2 = "UPDATE tbl_student_subjects SET $cvalue = 0 where ulrn = '$ulrn'";

                            if(mysqli_query($conn, $sql2)){
                                echo "Record updated successfully";
                            }else {
                                echo "Error updating record: " . mysqli_error($conn);
                            }
                        }
                    }
                }
            }
        }
    }

?>