<body style="background-color:rgba(0,0,0,1.00)">
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
