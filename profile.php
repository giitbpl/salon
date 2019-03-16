<?php
session_start();
 include ("include/smain_functions.php"); 
 include ("header.php");
 include ("userprofile.php");
// include ("navbar.php");
?>
<script>
$(document).ready(function(e) {
	$("#change").validate({
		rules:
		{
			oldpass:
			{
				required:true
			},
			newpass:
			{
				required:true
			},
			repass:
			{
				required:true,
				 equalTo: "#newpass"
			},
		}
		
		});
    $("#changepwd").click(function(e)
	{
		$("#change").validate();
		if($("#change").valid()==true)
		{
		$.post("loginmgt.php?opt=changepass",$("#change").serialize(),function(data){
			//console.log(data);
			//alert($(this).text() + " clicked!");
			$.notify("Your Password changes successfully","success");
			<?php /*?>if(data.search("Error")==-1)
			{
				showNotification("Your Password changes successfully");
			}
			else
			{
				showNotification("There is some problem with data","error");
			}<?php */?>
	});
		}
});
$("#changemail").click(function(e)
	{
		$("#chngemail").validate();
		if($("#changemail").valid()==true)
		{
		$.post("loginmgt.php?opt=changemail",$("#chngemail").serialize(),function(data){
			console.log(data);
			if(data.search("Error")==-1)
			{
				showNotification("Your Email changes successfully");
			}
			else
			{
				showNotification("There is some problem with data","error");
			}
	});
		}
});
});
</script>
<br>
<body style="background-color:rgba(247,247,247,1.00)"> 
<section>
<div class="container">
<table class="table table-borderless">
  <!--<thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>-->
  <tbody>
    <tr>
      <th scope="row">Location</th>
      <td><label><?php /*?><?php echo $res->location;?><?php */?></label></td>
      <td><i class="fa fa-pencil-square-o"><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModalLoc">Change</button></i></td>
    </tr>
    <tr>
      <th scope="row">Email/Phone Number</th>
      <td><label><?php /*?><?php echo $res->email;?><?php */?></label></td>
      <td><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModalEmail"><i class="fa fa-pencil-square-o">Change</i></td>
    </tr>
    <tr>
      <th scope="row">Password</th>
      <td><label><?php /*?><?php echo $res->pass;?><?php */?></label></td>
      <td><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal"><i class="fa fa-pencil-square-o">Change</i></button></td>
    </tr>
  </tbody>
</table>
</div>
</section>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="myModal">Change Password</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="change" method="post" action="">
  <label for="basic-url" class="">Old Password</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" ><i class="fa fa-key" aria-hidden="true"></i>
</span>
  </div>
  <input type="text" class="form-control" id="oldpass" name="oldpass" placeholder="Enter Old Password">
</div>
     </div>
   <label for="basic-url">New Password</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1" ><i class="fa fa-key" aria-hidden="true"></i>
</span>
  </div>
  <input type="password" class="form-control" placeholder="Enter New Password" aria-label="Password" id="newpass" name="newpass" aria-describedby="basic-addon1">
</div>
     </div>
     <label for="basic-url" class="">Re-Enter Password</label>

 <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1" ><i class="fa fa-key" aria-hidden="true"></i>
</span>
  </div>
  <input type="password" class="form-control" placeholder="Re-Enter Password" aria-label="Password" id="repass" name="repass" aria-describedby="basic-addon1">
</div>
     </div>
     <div>
     <button type="button" class="btn btn-success" id="changepwd">Save changes</button>
     </div>  
</form>
      </div>
      <div class="modal-footer">
        <!--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>-->
        
      </div>
    </div>
  </div>
</div>
<div class="modal" tabindex="-1" role="dialog" id="myModalEmail">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Change Email Address/Phone Number </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form id="chngemail" method="post" action="loginmgt.php">
     <label for="basic-url" class="">Email Address/Phone Number</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" ><i class="fa fa-envelope" aria-hidden="true"></i>
</span>
  </div>
  <input type="text" class="form-control" id="newemail" name="newemail" placeholder="Enter New Email Address">
</div>
     </div>
     <div>
     <button type="button" class="btn btn-success" id="changemail">Save changes</button>
     </div>
     </form>
      </div>
      <div class="modal-footer">
        <!--<button type="button" class="btn btn-primary">Save changes</button>-->
      </div>
    </div>
  </div>
</div>
<div class="modal" tabindex="-1" role="dialog" id="myModalLoc">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Change Location</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form id="changelocation" method="post" action="loginmgt.php">
  <label for="basic-url" class="">Location</label>

  <div class="form-group sm mb-3">
   <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" ><i class="fa fa-location" aria-hidden="true"></i>
</span>
  </div>
  <select id="location" class="form-control">
        <option selected>--Select Location--</option>
        <option>Kolar</option>
        <option>MP Nagar</option>
        <option>Arera Colony</option>
        <option>New Market</option>
      </select>
</div>
     </div>
     <div>
     <button type="button" class="btn btn-success">Save changes</button>
     </div>
     </form>
      </div>
      <div class="modal-footer">
        <!--<button type="button" class="btn btn-primary">Save changes</button>-->
      </div>
    </div>
  </div>
</div>
  </div>
</div>
</body>

<?php include ("footer.php");?>