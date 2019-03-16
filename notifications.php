<?php
session_start();
 include ("include/smain_functions.php"); 
include ("header.php");
 include ("userprofile.php");
?>
<br>
<body style="background-color:rgba(247,247,247,1.00)">
<div class="container -fluid">
<div class="row">
<div class="col-sm-6">
<ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
  
  <li class="nav-item">
    <a class="nav-link active" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Notifications</a>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active " id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
  You dont have any new notifications yet..
  </div>
</div>
</div>
<div class="col-sm-6">
<ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Contact</a>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
  <br>
  <table class="table table-borderless">
  <tbody>
    <tr>
      <td> <label for="name" class="">Name</label></td>
      <td><input type="text" class="form-control" id="name" name="name" placeholder="Enter Name"></td>
    </tr>
    <tr>
      <td><label for="msg" class="">Message</label></td>
      <td><textarea rows="3" cols="60"> </textarea></td>
    </tr>
    <tr>
      <td><button type="submit" class="btn btn-success">Send</button></td>
    </tr>
  </tbody>
</table>  
  </div>
  
  </div>
  
</div>
</div>
</div>
</div>
</body>
<?php include ("footer.php");?>