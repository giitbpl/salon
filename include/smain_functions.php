<?php
define("BASEURL",getBaseUrl()."/smain");
function genrateOtp()
{
	
	return rand(1000,9999);

	
}
function saveOtp($conn,$uid,$otp)
{
	date_default_timezone_set("Asia/kolkata");
	$ctime=date("Y-m-d H:i:s");
	mysqli_query($conn,"delete from inv_client_otp where uid=$uid");
	mysqli_query($conn,"insert into inv_client_otp(uid,otp,time) values($uid,$otp,'$ctime')");
	if(mysqli_affected_rows($conn)>0)
	{
		return "true";	
	}
	else
	{
		return "false";//.mysqli_error($conn);	
	}
}
function sendOtp($conn,$mobile,$otp)
{
	
}
function fetchOtpFromDB($conn,$uid)
{
		$rs=mysqli_query($conn,"select * into inv_client_otp where uid=$uid");
		if(mysqli_affected_rows($conn)>0)
		{
			$row=mysqli_fetch_assoc($rs);
			return $row["otp"];
		}
		else
		{
			$otp=genrateOtp();
			saveOtp($uid,$otp);
			return $otp;
		}
}
function getBaseUrl(){
  return sprintf(
    "%s://%s",
    isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off' ? 'https' : 'http',
    $_SERVER['SERVER_NAME']);
}
?>

