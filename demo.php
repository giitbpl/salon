<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<?php /*?><?php
 function url(){
  return sprintf(
    "%s://%s",
    isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off' ? 'https' : 'http',
    $_SERVER['SERVER_NAME']);
}
echo url();
?><?php */?>
<div class="tab-list">
				<ul class="p-tab bh-tab">
							<li class=""><a href="/myprofile/booking-history/">Booking History</a></li>
		<li class="_active"><a href="/myprofile/quikpay/">QuikPay</a></li>
		<li class=""><a href="/myprofile/experiences">Experiences</a></li>
		<li class="linkprofile "><a href="/myprofile/settings/">Settings</a>
		<div id="lnkAccTT" class="link-info" style="display:none;">
			<span class="__icon">
				<a href="#" data-tooltip="I’m the tooltip text" class="tooltip-right">
				<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100 100" enable-background="new 0 0 100 100" xml:space="preserve">
					<use xlink:href="/icons/common-icons.svg#icon-info"></use>
				</svg>
				</a>
			</span>
			<span class="tooltip-content" href="javascript:;" onclick="BMS.SignIn.fnShowRelProfile(); return false;">
				Link your existing profile
			</span>
		</div></li>	
					</ul>
			</div>
</body>
</html>
