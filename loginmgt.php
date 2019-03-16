<?php
session_start();
//print_r($_GET);
if($_REQUEST["opt"]=="reg")
{
	register();
}
else if($_REQUEST["opt"]=="sin")
{
	signin();
}
else if($_REQUEST["opt"]=="logout")
{
	logout();
}
else if($_REQUEST["opt"]=="changepass")
{
	changepass();
}
else if($_REQUEST["opt"]=="changemail")
{
	changemail();
}


function register()
{
	include("include/connection.php");
include("include/smain_functions.php");
//$uid=$_POST["uid"];
$e=$_POST["emailadd"];
$mob=$_POST["mobile"];
$pass=$_POST["pass"];
$nm=$_POST["name"];
$sql = "INSERT INTO inv_client_login (email,mobile,pass,name,status)
VALUES ('$e', '$mob', '$pass','$nm','not verify')";
mysqli_query($conn, $sql);
$res = new \stdClass();
if (mysqli_affected_rows($conn)>0)
 {	
 $last_id = mysqli_insert_id($conn);
 //   echo $last_id;
	//$res=NULL;
	$otp=genrateOtp();
	$ans=saveOtp($conn,$last_id,$otp);
	
	 $res->status="true";
	 $res->uid=$last_id;
	 $res->otp=$otp;
	 $res->msg="success";//.$ans;
	 $res->name=$nm;
	 $res->pass=$pass;
	$res->verify="false";
	$_SESSION['cuser'] = serialize($res);
 //echo json_encode($res);	 
   //echo "true";
} 
else 
{
	//$res=NULL;
  	$res->status="false";
	 $res->uid="0";
	 $res->otp="0";
	 $res->msg=mysqli_error($conn);

  
    //echo "false";
}
echo json_encode($res);	 

//mysqli_close($conn);
}

function signin()
{
include("include/connection.php");
include("include/smain_functions.php");
$sql = "SELECT * from inv_client_login where (mobile ='".$_POST["email"]."' OR email='".$_POST["email"]."' ) and pass ='".$_POST["password"]."'";
//echo $sql;
$result = mysqli_query($conn,$sql);
//echo $result;
 $res = new \stdClass();
if (mysqli_affected_rows($conn) > 0)
 {
    // output data of each row
    $row = mysqli_fetch_array($result);
   $res = new \stdClass();

	 $res->name=$row["name"];
	 $res->pass=$row["pass"];
	  $res->status="true";
	 $res->uid=$row["cid"];
	 $res->msg="success";//.$ans;
	 $res->mobile=$row["mobile"];
	 $res->verify=$row["status"];
	 	$_SESSION['cuser'] = serialize($res);

	
 }
		else
		{
			  $res->status="false";
	 //$res->uid=$row["cid"];
	 $res->msg="failed";//.$ans;
		}
echo json_encode($res);	 
		
}
function logout()
{
	include("include/connection.php");
include("include/smain_functions.php");
			session_destroy();

	if(isset($_GET["mobile"]))
	{
		$res = new \stdClass();
		$res->status="true";
		echo json_encode($res);	 

	}
	else
	{
		header("location:".BASEURL."\index.php");
	}
}
function changepass()
{
	include("include/connection.php");
include("include/smain_functions.php");
$oldpass=$_POST["oldpass"];
$newpass = $_POST['newpass'];
//$repass = $_POST['repass'];
if(isset($_SESSION["cuser"]))
	   {
		   $res=unserialize($_SESSION["cuser"]);
	//  echo "UPDATE inv_client_login SET pass='$newpass' where cid=$res->uid";
$sql=mysqli_query ($conn,"UPDATE inv_client_login SET pass='$newpass' where cid=$res->uid and pass='$oldpass'");
//$result = $conn->query($sql);
	if (mysqli_affected_rows($conn) > 0) 
		{
   			echo "successful";
		} 
		else 
		{
			echo "Error:".mysqli_error($conn);
		}
        
}
}
function changemail()
{
	include("include/connection.php");
include("include/smain_functions.php");
$e=$_POST["emailadd"];
$mob=$_POST["mobile"];
if(isset($_SESSION["cuser"]))
	   {
		   $res=unserialize($_SESSION["cuser"]);
	//  echo "UPDATE inv_client_login SET pass='$newpass' where cid=$res->uid";
$sql=mysqli_query ($conn,"UPDATE inv_client_login SET email='$newemail' where cid=$res->uid");
//$result = $conn->query($sql);
	if (mysqli_affected_rows($conn) > 0) 
		{
   			echo "successful";
		} 
		else 
		{
			echo "Error:".mysqli_error($conn);
		}
        
}
}
?>