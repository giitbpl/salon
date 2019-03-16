<!doctype html>
<html>

<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.5.95/css/materialdesignicons.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/noty_theme_default.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>

<script src="js/bootstrap.js"></script>
<script src="js/jquery.validate.min.js"></script>

<script src="js/jquery-validate.bootstrap-tooltip.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
<script src="js/jquery.noty.js"></script>
<script src="js/notify.min.js"></script>
<script src="js/myfunctions.js"></script>
<style>

#header
{
	/*background-color:rgba(0,138,7,1.00);*/
	position:absolute;
	top:0px;
	left:0px;
	z-index:555555;
	width:100%;

}
#header.header-scrolled {
    background: rgba(255,255,255,0.5);
    padding: 20px 0;
    height: 72px;
    transition: all 0.5s;
	
}
      
@media (max-width: 768px) {
.navbar-brand {
  display: none;
 }
}

.nav>li>a {
    padding: 10px ;
}
.tooltip{
  z-index: 100000000 !important;
}
.modal-header
{
	border-bottom: 1px solid #08ff04;
}
.modal-footer
{
	border-top: 1px solid #08ff04;
}
.btn-success {
    color: #fff;
    background-color: #07c703;
    border-color: #00ff1f;
		
}
/*label.error { 
   float: none; color: red; 
   padding-left: .5em;
   vertical-align: top; 
   display: block;
}​*/

.avatar {
  vertical-align: left;
  width: 100px;
  height: 100px;
  border-radius: 50%;
}
 /*Bottom left text */
.bottom-left {
  position: absolute;
  bottom: 300px;
  left: 16px;
}
</style>
</head>
<header id="header">
<nav class="navbar navbar-expand-lg navbar-dark  static-top" style="background-color:rgba(0,0,0,0.56)">
  <div class="container">
    <a class="navbar-brand " href="#">
          <img src="img/Chair logo.png" width="50" height="50" alt=""/>
             <img src="img/logo white font.png" width="150" height="50" alt="" />

        </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="true" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <form class="mx-2 my-auto w-100" style="width:60%">
   <div class="input-group">
      <input type="text" class="form-control" placeholder="">
    <span class="input-group-append">
       <!--<button class="btn btn-outline-secondary" type="button">GO</button>-->
       </span>
    </div>
</form>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
       <?php
	   if(isset($_SESSION["cuser"]))
	   {
		   $res=unserialize($_SESSION["cuser"]);
		  ?>
             <li class="nav-item dropdown">
       <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i>
        &nbsp; <?php echo $res->name;?>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="<?php echo BASEURL;?>\profile.php"><i class="fa fa-user">&nbsp;Profile</i></a>
          <a class="dropdown-item" href="<?php echo BASEURL;?>\booking.php"><i class="fa fa-book">&nbsp;My Bookings</i></a>
          <a class="dropdown-item" href="<?php echo BASEURL;?>\notifications.php"><i class="fa fa-bell">&nbsp;Notifications</i></a>
          <a class="dropdown-item" href="<?php echo BASEURL;?>\refer.php"><i class="fa fa-retweet">&nbsp;Refer</i></a>
          <a class="dropdown-item" href="<?php echo BASEURL;?>\loginmgt.php?opt=logout"><i class="fa fa-sign-out-alt">&nbsp;Logout</i></a>
        </div>
      </li>
          <?php
	   }
	   else
	   {
	   ?>
        <li class="nav-item">
           <a class="nav-item nav-link" href="#myModal" data-toggle="modal" data-target="#myModal"><span><i class="fa fa-user">&nbsp;Login/Register</i></span></a>

        </li>
        <?php
	   }
			?>      
      </ul>
    </div>
  </div>
</nav>
</header>
