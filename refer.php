<?php
session_start();
 include ("include/smain_functions.php"); 
include ("header.php");
 include ("userprofile.php");
?>
<script>
$("#refer").hide();

$("#btnrefer").click()
{
	$("#refer").show();
}

</script>
<br>
<body style="background-color:rgba(247,247,247,1.00)">
<div class="container-fluid">
 <div class="row">
 <div class="col-sm-6">
 <ul class="nav nav-pills nav-justified" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-refer" role="tab" aria-controls="pills-refer" aria-selected="true">History</a>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active " id="pills-refer" role="tabpanel" aria-labelledby="pills-refer-tab">
  <br>
  <table class="table table-borderless ">
  <tbody>
    <tr>
      <td> Your Credit Points are....</td>
    </tr>
    <tr>
      <td>Your Refer code is....</td>
    </tr>
    <tr>
      <td>
      <button type="button" class="btn btn-success" id="btnrefer">Referal Benifits</button></td>
    </tr>
  </tbody>
</table>
   </div>
 </div>
 </div>
 <div class="col-sm-6" id="refer">
 <div></div>
 <div>
 </div>
  <table class="table table-borderless ">
  <tbody>
    <tr>
      <td><label class="">Refer By Email</label>
      </td>
      <td><span><i class="fa-fa-envelope"></i></span></label><input type="text" name="email" id="email"></td>
    </tr>
    <tr>
      <td><label class="">Refer By Contact</label></td>
      <td><input type="text" name="contact" id="contact"><i class="fa-fa-phone"></i></td>
    </tr>
    <tr>
      <td><label  class="">Refer By WhatsApp</label></td>
      <td><i class="fa-fa-whatsapp"></i><input type="text" name="whtsapp" id="whtsapp"></td>
    </tr>
  </tbody>
</table>
 </div>
 </div>
 
 </div>
</body>
<?php include ("footer.php");?>