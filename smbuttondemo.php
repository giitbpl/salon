
<style> 

/*.icon {
  position: relative;
  margin: 150px auto 0 auto;
  font-family: sans-serif;
  text-align: center;
  text-transform: uppercase;
  letter-spacing: 1px;
  font-size: 12px;
}*/

@keyframes anim {
  0% {
    transform: translateY(0);
  }
  100% {
    transform: translateY(10px);
  }
}
.links {
  position: absolute;
  width: auto;
  height: auto;
  left: 0;
  top: 50%;
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
}
.links .fl-fl {
/* background: #119E06;
*/  border-radius: 0 15px 15px 0;
  text-transform: uppercase;
  letter-spacing: 3px;
  padding: 4px;
  width: 191px;
  position: relative;
  margin: 4px 0;
  left: -157px;
  z-index: 1000;
  text-align: right;
  font: normal normal 10px Arial;
  -webkit-transition: all 375ms cubic-bezier(0.86, 0, 0.07, 1);
  -moz-transition: all 375ms cubic-bezier(0.86, 0, 0.07, 1);
  -ms-transition: all 375ms cubic-bezier(0.86, 0, 0.07, 1);
  -o-transition: all 375ms cubic-bezier(0.86, 0, 0.07, 1);
  transition: all 375ms cubic-bezier(0.86, 0, 0.07, 1);
}
.links .fl-fl:hover {
  left: 0;
}
.links .fl-fl:hover span, .links .fl-fl:hover  {
  color: #fff;
}
.links .fl-fl a {
  text-decoration: none;
}
.links .fl-fl a .fa {
  transition: all 700ms ease 375ms;
  float: right;
  font-size: 20px;
  color: #000;
  padding: 10px 0;
  width: 40px;
  margin-right: 5px;
}

.links .fl-fl a span {
  transition: all 700ms ease 427ms;
  color: #111;
  text-decoration: none;
  text-align: center;
  line-height: 43px !important;
  vertical-align: top !important;
}
.links .fl-fl facebook {
	color:rgba(0,66,137,1.00)
}
</style>

<!-- Follow Links -->
<div class="links">
  <div class="fl-fl" style="color: #3b5998;
    background-color: #3b5998;
">
    <a href="" target="_blank">
      <span>Facebook</span>
      <i class="fa fa-facebook text-white"></i>
    </a>
  </div>
  <div class="fl-fl" style="color: #bc2a8d;
    background-color: #bc2a8d;">
    <a href="" target="_blank">
      <span>Instagram</span>
      <i class="fa fa-instagram text-white"></i>
    </a>
  </div>
  <div class="fl-fl" style="color: #bb0000;
    background-color: #bb0000;">
    <a href="" target="_blank">
      <span>Youtube</span>
      <i class="fa fa-youtube-play text-white"></i>
    </a>
  </div>
  <div class="fl-fl" style="color: #00aced;
    background-color: #00aced;">
    <a href="" target="_blank">
      <span>Twitter</span>
      <i class="fa fa-twitter text-white"></i>
    </a>
  </div>
<!--  <div class="fl-fl">
    <a href="" target="_blank">
      <span>LinkedIn</span>
      <i class="fa fa-linkedin"></i>
    </a>
  </div>
  <div class="fl-fl">
    <a href="" target="_blank">
      <span>Google+</span>
      <i class="fa fa-user"></i>
    </a>
  </div>-->
</div>
