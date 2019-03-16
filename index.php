<?php
session_start();
 include ("include/smain_functions.php");
 include ("header.php");
// include ("navbar.php");
?>
<script>
var info="";
$(document).ready(function(e) {
	//$("#verify").hide();
/*	$(".fancybox").fancybox({
        openEffect: "none",
        closeEffect: "none"
    });*/
    
    $(".zoom").hover(function(){
		
		$(this).addClass('transition');
	}, function(){
        
		$(this).removeClass('transition');
	});
	
    $("#frmsignin").validate({
		rules:
		{
			email:
			{
				required:true
			},
			password:"required"
			
			}
			       
 

		
		});
		$("#frmregister").validate({
		rules:
		{
			name:
			{
				required:true
			},
			mobile:
			{
				required:true,
				 maxlength: 10,
		       minlength: 10,
			   digits: true


			},
			emailadd:
			{
				required:true
			},
			pass:
			{
				required:true
			},
			cnfpassword: {
      equalTo: "#pass",
	  required:true
    },
			
			 iaccept:"required"
			}, 
		
	messages:{
		
		name:" Please Enter  Name",
		mobile:" Please Enter Your Valid Mobile Number",
		emailadd:"Please Enter a Valid Email Address",
		pass:" Please Enter Password",
		cnfpassword:"Please Re-Enter Password ",
		iaccept:"Accept Terms and Conditions"
		
	},
	
	 
			    
			
			
		
		});

		$("#reg").click(function(e) {
			$("#frmregister").validate();
			if($("#frmregister").valid()==true)
			{
			
    					$.post("<?php echo BASEURL?>/loginmgt.php?opt=reg",$("#frmregister").serialize(),function(data)
				{
					console.log(data);
					info=JSON.parse(data);
						if(info.status=="true" && info.msg=="success")
						{
								
							//	$('#myModal1').modal('show');
							$('#myModal').modal('hide');
							$('#myModal1').modal('show');
						}
						else
						{
							/*$("#error").removeClass("d-none");
							
							$("#error").html("email or mobile is already register");*/
							var validator = $("#frmregister").validate();
							  errors = { emailadd: "email is already register" };
        /* Show errors on the form */
       							 validator.showErrors(errors);     
								
						}
					});
			}

});

$("#profile-tab, #home-tab").click(function(e) {
	//alert("aa");
 //  var validator = $( "#frmregister" ).validate();
 
/*
 * Just before SPA page's navigation away.
 */
//validator.resetForm();
$(" div.tooltip").hide();
});

$("#verify").click(function(e) {
    if($("#otp").val()==info.otp)
	{
		$('#myModal1').modal('hide');
		location.reload();
	}
	else
	{
		console.log("not match");
	}
});
$("#sin").click(function(e) {
	$("#frmsignin").validate();
	if($("#frmsignin").valid()==true)
	{
    $.post("<?php echo BASEURL ?>/loginmgt.php?opt=sin",$("#frmsignin").serialize(),function(data)
		{
		info =JSON.parse(data);
		if(info.status=="true" && info.msg=="success")
		{
			location.reload();
		}
		else if(info.status=="false" && info.msg=="failed")
		{
			var validator = $("#frmsignin").validate();
							  errors = { email: "invalid email id or mobile",password:"password incorect" };
        /* Show errors on the form */
       							 validator.showErrors(errors);  
		}
	});
	}
});


});


</script>
<body style="background-color:rgba(0,0,0,1.00)">

	<section id="slider"><!--slider-->
		<div class="container_fluid">
			<div class="row">
									 <?php include 'HeaderSlider.html';?>
             </div>
		</div>
        </section><!--/slider-->
        <br>
        <br>
        <br>
<section id="smbtn "><!--slider-->
			<div>
					<?php include ("smbuttondemo.php");?>				
             </div>
		</div>
        </section><!--/slider-->
     <div class="container">   
  
   <div class="row">


            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <div  class="fancybox" rel="ligthbox">
                    <img  src="https://images.pexels.com/photos/62307/air-bubbles-diving-underwater-blow-62307.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="zoom img-fluid "  alt="">
                   
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a href="https://images.pexels.com/photos/38238/maldives-ile-beach-sun-38238.jpeg?auto=compress&cs=tinysrgb&h=650&w=940"  class="fancybox" rel="ligthbox">
                    <img  src="https://images.pexels.com/photos/38238/maldives-ile-beach-sun-38238.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="zoom img-fluid"  alt="">
                </a>
            </div>
            
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a href="https://images.pexels.com/photos/158827/field-corn-air-frisch-158827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="fancybox" rel="ligthbox">
                    <img  src="https://images.pexels.com/photos/158827/field-corn-air-frisch-158827.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="zoom img-fluid "  alt="">
                </a>
            </div>
            
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a href="https://images.pexels.com/photos/302804/pexels-photo-302804.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="fancybox" rel="ligthbox">
                    <img  src="https://images.pexels.com/photos/302804/pexels-photo-302804.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="zoom img-fluid "  alt="">
                </a>
            </div>
            
             <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a href="https://images.pexels.com/photos/1038914/pexels-photo-1038914.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="fancybox" rel="ligthbox">
                    <img  src="https://images.pexels.com/photos/1038914/pexels-photo-1038914.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="zoom img-fluid "  alt="">
                </a>
            </div>
            
             <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a href="https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="fancybox" rel="ligthbox">
                    <img  src="https://images.pexels.com/photos/414645/pexels-photo-414645.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="zoom img-fluid "  alt="">
                </a>
            </div>
            
             <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a href="https://images.pexels.com/photos/56005/fiji-beach-sand-palm-trees-56005.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="fancybox" rel="ligthbox">
                    <img  src="https://images.pexels.com/photos/56005/fiji-beach-sand-palm-trees-56005.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="zoom img-fluid "  alt="">
                </a>
            </div>
            
             <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a href="https://images.pexels.com/photos/1038002/pexels-photo-1038002.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="fancybox" rel="ligthbox">
                    <img  src="https://images.pexels.com/photos/1038002/pexels-photo-1038002.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940" class="zoom img-fluid "  alt="">
                </a>
            </div>
            
            
           
           
       </div>
        </div>
  
<div class="modal fade" id="myModal" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="Z-index:888888">
  <div class="modal-dialog" >
    <div class="modal-content">
      <div class="modal-header" style="background-color:rgba(0,9,0,1.0)">
     
     <div class="container">
 <ul class="nav nav-tabs nav-fill" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#signin" role="tab" aria-controls="home" aria-selected="true">SignIn</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#register" role="tab" aria-controls="profile" aria-selected="false">Register</a>
  </li>
</ul>

</div>
 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        
      </div>
      <div class="modal-body " style="background-color:rgba(0,0,0,1.0)">
      <div class="container">
    
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
  <form id="frmsignin" method="post" action="loginmgt.php">
  <label for="basic-url" class="text-white">Email / Mobile</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text nav-link.active" id="basic-addon1" ><i class="fa fa-envelope " aria-hidden="true"></i>
</span>
  </div>
  <input type="text" class="form-control" id="email" name="email" placeholder="Email/Mobile Number" aria-label="Username" aria-describedby="basic-addon1">
</div>
     </div>
   <label for="basic-url" class="text-white">Password</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1" ><i class="fa fa-key" aria-hidden="true"></i>
</span>
  </div>
  <input type="password" class="form-control" placeholder="Password" aria-label="Password" id="password" name="password" aria-describedby="basic-addon1">
</div>
     </div>
 <div class="form-group sm mb-3">
   <div class="input-group mb-3">

<a href="forgotPassword.php">Forgot Password?</a>
</div>
     </div>
     <div class="form-group sm mb-3">
   <div class="input-group mb-3">
     <div class="form-check">
    <input type="checkbox" class="form-check-input" id="remember" name="remember">
    <label class="form-check-label text-white" for="remember" >Remember Me </label>
  </div>
  </div>
  </div>
<div class="form-group sm mb-3">
   <div class="input-group mb-3">

<button type="button" class="btn btn-success" id="sin" style="float:right">Sign In</button>
</div>
     </div>
  
</form>
  </div>
  
  <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="profile-tab">
  <form id="frmregister" method="post" action="">
  <div id="registerform">
 <label for="basic-url" class="text-white">Name</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1"><i class="fa fa-user" aria-hidden="true"></i>
</span>
  </div>
  <input type="text" class="form-control"  id="name" name="name" placeholder="Enter Name" aria-label="name" aria-describedby="basic-addon1">
</div>
     </div>
     <label for="basic-url" class="text-white">Mobile</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1"><i class="fa fa-mobile" aria-hidden="true"></i>
</span>
  </div>
  <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile Number" maxlength="10" aria-label="mobile" aria-describedby="basic-addon1">
</div>
     </div>
   <label for="basic-url" class="text-white">Email</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1"><i class="fa fa-envelope" aria-hidden="true"></i>
</span>
  </div>
  <input type="text" class="form-control" id="emailadd" name="emailadd" placeholder="Enter Email Address" aria-label="emailadd" aria-describedby="basic-addon1">
</div>
     </div>
     <label for="basic-url "class="text-white">Password</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1"><i class="fa fa-key" aria-hidden="true"></i>
</span>
  </div>
  <input type="password" class="form-control" id="pass" name="pass"placeholder="Enter Password" aria-label="Password" aria-describedby="basic-addon1">
</div>
     </div>
     <label for="basic-url" class="text-white">Confirm Password</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1"><i class="fa fa-key" aria-hidden="true"></i>
</span>
  </div>
  <input type="password" class="form-control"  id="cnfpassword" name="cnfpassword" placeholder="Re-enter Password" aria-label="cnfpassword" aria-describedby="basic-addon1">
</div>
     </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="iaccept" name="iaccept">
    <label class="form-check-label text-white" for="iaccept" >I Accept <a href="#terms.php">Terms And Conditions</a></label>
  </div>
  <br>
  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
<button type="button" class="btn btn-success" id="reg" data-toggle="" data-target="" style="float:right">Register</button><br>

</div>
     </div>
  </div>
 </form>
</div>
      </div>
      </div>
      </div>
      <div class="modal-footer" style="background-color:black">
    
      <div class="fb-login-button" data-size="large" data-button-type="continue_with" data-auto-logout-link="false" data-use-continue-as="false">
      </div>
     
</div>
    </div>
  </div>
</div>
 <!-- Modal -->
  <div class="modal fade" id="myModal1" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="Z-index:999999">
  <div class="modal-dialog" >
    <div class="modal-content">
      <div class="modal-header" style="background-color:rgba(0,9,0,1.0)">
   
        
      </div>
      <div class="modal-body " style="background-color:rgba(0,0,0,1.0)">
      <div class="container">
    
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
  <form id="otpverify" method="post" action="otpmgt.php">

  <label for="basic-url" class="text-white">Enter Otp Number</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text nav-link.active" id="basic-addon1" ><i class="fa fa-lock " aria-hidden="true"></i>
</span>
  </div>
  <input type="text" class="form-control" id="otp" name="otp" placeholder="Enter OTP Number" aria-label="Username" aria-describedby="basic-addon1">
   <button type="button" class="btn btn-success" id="verify">Verify</button>
</div>
     </div>
  
</form>
  </div>
 
</div>

      </div>
      </div>
      <div class="modal-footer" style="background-color:black">
<!--      <div class="fb-login-button" data-size="large" data-button-type="continue_with" data-auto-logout-link="false" data-use-continue-as="false"></div>
-->     
</div>
    </div>
  </div>
</div>
</body>
<?php include ("footer.php");?>