<?php
include("include/connection.php");
//$uid=$_POST["uid"];
$otp=$_POST["otp"];
$time=$_POST["time"];
$sql = "INSERT INTO inv_client_otp (otp,time)
VALUES ('$otp', '$time')";

if (mysqli_query($conn, $sql))
 {
    echo "New record created successfully";
} else {
    echo "Error: something went wrong <br>" . $conn->error;
}
mysqli_close($conn);
?>
