<?php
class Login
{
	  
    private $uid;

  
    private $otp;

  
    private $msg;

   
    private $status;

  
    private $verify;

 
    public function getUid() {
        return $this->uid;
    }

  
    public function setUid($uid) {
        $this->uid = $uid;
    }

   
    public function getOtp() {
        return $this->otp;
    }

   
    public function setOtp($otp) {
        $this->otp = $otp;
    }

   
    public function getMsg() {
        return $this->msg;
    }

    
    public function setMsg($msg) {
        $this->msg = $msg;
    }

   
    public function getStatus() {
        return $this->status;
    }

    
    public function setStatus($status) {
        $this->status = $status;
    }

   
    public function getVerify() {
        return $this->verify;
    }

   
    public function setVerify($verify) {
        $this->verify = $verify;
    }
	
}
?>