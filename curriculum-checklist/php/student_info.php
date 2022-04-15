<?php 
    include 'conn.php';

    $ulrn = $_REQUEST['ulrn'];

    //Student info
    $sql = "select * from tbl_student_info where ulrn='$ulrn'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
           $name = $row['name'];
           $address = $row['address'];
           $contact_no = $row['contact_no'];
           $sy = $row['s_y'];
           $strand = $row['strand'];
        }
    }else {
        $name = "";
        $address = "";
        $contact_no = "";
        $sy = "";
        $strand = "";
    }
    
    mysqli_close($conn);
    $arr = array("$name", "$address", "$contact_no", "$sy", "$strand");
    $myJSON = json_encode($arr);
    echo $myJSON;
?>