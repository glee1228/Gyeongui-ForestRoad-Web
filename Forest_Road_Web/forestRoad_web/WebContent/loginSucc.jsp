<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Gyeongui-line-forest-road-web</title>
<meta charset="UTF-8">
 <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=ULpi3Dbxtgp5X4t6MXFE&submodules=geocoder"></script>
<script type="text/javascript" src="js/instafeed.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}
/* Full height image header */
.bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("img/section3.jpg");
    min-height: 100%;
}
.w3-bar .w3-button {
    padding: 16px;
}
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 60%;
    border-radius: 70%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 35%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}

@keyframes animatezoom {
    from {transform: scale(0)}
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ffffff;
    background-color: #ffffff;
}

/* Style the buttons inside the tab */
.tab button {

    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 22px;
    font-color: #000000
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content  - about style*/
.tabcontent {
    display: none;
    padding: 6px 12px;
    -webkit-animation: fadeEffect 1s;
    animation: fadeEffect 1s;
}

/* Fade in tabs */
@-webkit-keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}

@keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}
</style>
<body>

<script>alert('${sessionScope.name}'+"�� �ݰ����ϴ�!")</script>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="#home" class="w3-bar-item w3-button w3-wide">logo</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
      <a href="#search" class="w3-bar-item w3-button"><i class="fa fa-map-marker"></i> SEARCH</a>
      <a href="#instafeed" class="w3-bar-item w3-button"><i class="fa fa-instagram"></i> INSTA</a> 
      <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> TEAM</a>
      <a class ="w3-bar-item w3-button" onclick = 'location.href="cont?command=logout"'id="button_logout" ><i class="fa fa-sign-in"></i>LOGOUT</a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ��</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
  <a href="#instafeed" onclick="w3_close()" class="w3-bar-item w3-button">INSTA</a>
  <a href="#search" onclick="w3_close()" class="w3-bar-item w3-button">SEARCH</a>
   <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">TEAM</a>
  <a href="#signup" onclick="w3_close()" class="w3-bar-item w3-button">SIGNUP</a>
</nav>

<!-- Header with full-height image -->
<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
  <div class="w3-display-left w3-text-white" style="padding:48px">
    <span class="w3-jumbo w3-hide-small"> .Railroad to Forest</span><br>
    <span class="w3-xxlarge w3-hide-large w3-hide-medium"> .Railroad to Forest</span><br>
    <span class="w3-xlarge">Do not waste your time visiting the Gyeongui line forest road</span>
    <p><a href="#about" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Learn more and start today</a></p>
  </div> 
  <div class="w3-display-bottomleft w3-text-grey w3-large" style="padding:24px 48px">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</header>
<!-- About Section -->
<div class="w3-container" style="padding:128px 16px" id="about">
  <h2 class="w3-center">ABOUT</h2>
  <p class="w3-center w3-large">Key features of our company</p>
</div>
   
<div class="tab">
  <button class="tablinks" onclick="openCity(event, '������ ����')"><b>������ ����</b></button>
  <button class="tablinks" onclick="openCity(event, '�Ϳ챳 ����')"><b>�Ϳ챳 ����</b></button>
  <button class="tablinks" onclick="openCity(event, '�ż��� ����')"><b>�ż��� ����</b></button>
  <button class="tablinks" onclick="openCity(event, '���ﵿ ����')"><b>���ﵿ ����</b></button>
  <button class="tablinks" onclick="openCity(event, '������ ����')"><b>������ ����</b></button>
  <button class="tablinks" onclick="openCity(event, '��â�� ����')"><b>��â�� ����</b></button>
  <button class="tablinks" onclick="openCity(event, '��ȿ�� ����')"><b>��ȿ�� ����</b></button>
</div>

<div id="������ ����" class="tabcontent">
  <h3>1. ������ ���� (1,268m)</h3>
  <p><b>| KEYWORD: #��Ʈ����ũ #ȫ���Ա��� #3���ⱸ #���೪�� |</b>
  <br><br>ȫ���԰� ������ �־�, ������ ���������� Ȱ�Ⱑ ��ġ�� �����̴�.<br><br>
  ��ö���� ���� �þ 1km�� ���ϴ� ���೪�� ���� ���� ��å�η� �����̴�.
  </p>
</div>

<div id="�Ϳ챳 ����" class="tabcontent">
  <h3>2. �Ϳ챳 ����(366m)</h3>
  <p> <b>| KEYWORD: #�����Ÿ� #��ȭ�������� #�Ұ��� #��ǳ #���� #����Ʈ |</b>
  <br><br>
   ���� ������ ������ ���� �ǳθ� ���ܱⰡ �������� '����' �Ҹ��� �︰�ٰ� �ؼ� '�����Ÿ�'�� �Ҹ��� ���̴�. <br><br>
   �������� �ϻ�����̴� â������ ���ø��� �ϴ� �������� ��ȭ���������� �����ߴ� .
  <br><br> �ٸ��� �Ұ���� �������� �Բ� �־� ���ε��� ��ǳ �ڽ��� ��õ�ȴ�.</p> 
</div>

<div id="�ż��� ����" class="tabcontent">
  <h3>3. �ż��� ����(390m)</h3>
  <p><b>| KEYWORD: #�ܵ𸶴� #���ϰ��� #�ұ��� #�����뿪1���ⱸ |</b>
  <br><br>���� ������ �ΰ���õ�� '���빰õ'�� ������ ���� ���� �ǰ�õ�� Ư¡�̴�.
  <br> <br>
  �л���� ����Ŀ�´�Ƽ�� ���� ���� �ܵ𸶴�� ���ﵿ ������ ������ ���ϰ���, �ұ������ �� �Ÿ��̴�. 
   <br><br>
   ������ ���� �߾Ӽ� 1�� �ⱸ�� ����Ǿ� �ִ�.
  </p>
</div>


<div id="���ﵿ ����" class="tabcontent">
  <h3>4. ���ﵿ ����(760m)</h3>
  <p><b>| KEYWORD: #���� #���ﵿ #���� #�� |</b>
  <br><br>���Ǽ� ���� �� ���� ���� ����� �������� ��������� ������ �ְ����� �����ϴ븦 ��� ����Ͽ� ��å�ο� �����ű��� �����ߴ�.
  <br> <br>
  Ư��, ���̸� ������ �����Ͽ� ������ ������ ���� ��ҷ� �����ϴ�.</p>
</div>

<div id="������ ����" class="tabcontent">
  <h3>5. ������ ����(150m)</h3>
  <p><b>| KEYWORD: #��Ÿ�����̾� #��Ƽ���� #������� #���� |</b>
  <br><br>��Ÿ�����̾��� ��Ƽ���� �ͳ��� ���� '���� �� �������'  ���� ö���� ������ �����̴�. 
   <br><br>
  ���� ����, �ܵ��, ������ ���� �������� ��췯�� ���� �����̴�. </p>
</div>

<div id="��â�� ����" class="tabcontent">
  <h3>6.��â�� ����(630m)</h3>
  <p><b>| KEYWORD: #���� #N����Ÿ�� #��� #��ġ |</b>
  <br><br>������ 10���ⱸ���� ȿâ�������� �̾����� ��â�� ������ ���Ǽ����� �����Ǿ��� ������ ���� �ҳ����� �ɾ� �ɼ��� �����ߴ�.
  <br> <br>
 Ư�� ����� N����Ÿ��, ���� ��������, ��� ����������   �ÿ��ϰ� �����ٺ��̴� ���������� �ִ�. </p>
</div>

<div id="��ȿ�� ����" class="tabcontent">
  <h3>7. ��ȿ�� ����(690m)</h3>
  <p><b>| KEYWORD: #�����丮�� #historywall #���Ǽ����� #����  |</b>
  <br><br>�� ȭ���� 1906�� ����� �� ���Ǽ��� ���� �����丮�� (wall)�� ��ġ�Ǿ� �־� ���̵�� �Բ� ������ ���Ǹ� �ǻ��� ���� ����.
  <br><br>
 Ư��, �ٸ� ������ ���� ���Ǽ��� ���� ������ ����� �پ��� ���Ÿ� ������ ��  �ִ�. </p>
</div>


<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>


<!--  Naver Map Tag -->

	<div class="w3-container" style="padding: 128px 16px" id="search">
		<h3 class="w3-center">SEARCH</h3>
		<p class="w3-center w3-large"> the Restuarant, RestRoom, Parking lot</p>
		<div id="map" style="width: 65%; height: 550px;"></div>

		<!-- Promo Section "Statistics" -->
		<div class="w3-container w3-row w3-center w3-dark-grey w3-padding-32">
			<div class="w3-quarter">
				<span class="w3-xxlarge">14+</span> <br>Partners
			</div>
			<div class="w3-quarter">
				<span class="w3-xxlarge">55+</span> <br>Projects Done
			</div>
			<div class="w3-quarter">
				<span class="w3-xxlarge">89+</span> <br>Happy Clients
			</div>
			<div class="w3-quarter">
				<span class="w3-xxlarge">150+</span> <br>Meetings
			</div>
		</div>
	</div>
	<script>
      var map = new naver.maps.Map('map');
      var myaddress = '������';// ���θ� �ּҳ� ���� �ּҸ� ���� (�ǹ��� �Ұ�!!!!)
      naver.maps.Service.geocode({address: myaddress}, function(status, response) {
          if (status !== naver.maps.Service.Status.OK) {
              return alert(myaddress + '�� �˻� ����� ���ų� ��Ÿ ��Ʈ��ũ ����');
          }
          var result = response.result;
          // �˻� ��� ����: result.total
          // ù��° ��� ��� �ּ�: result.items[0].address
          // ù��° �˻� ��� ��ǥ: result.items[0].point.y, result.items[0].point.x
          var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
          map.setCenter(myaddr); // �˻��� ��ǥ�� ���� �̵�
          // ��Ŀ ǥ��s
          var marker = new naver.maps.Marker({
            position: myaddr,
            map: map
          });
          // ��Ŀ Ŭ�� �̺�Ʈ ó��
          naver.maps.Event.addListener(marker, "click", function(e) {
            if (infowindow.getMap()) {
                infowindow.close();
            } else {
                infowindow.open(map, marker);
            }
          });
          // ��ũ Ŭ���� ���������� ����
          var infowindow = new naver.maps.InfoWindow({
              content: '<h4> [���̹� �����ڼ���]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
          });
      });
      </script>




<script>
 var feed = new Instafeed({
  get: 'user',
  userId: 307851484,
  accessToken: '307851484.0bae29a.0eaa632555b94683825551177628680f',
  resolution: 'low_resolution',
  template: '<a href="{{link}}" class="w3-image w3-card w3-col l3 m6 w3-margin-bottom"><img src="{{image}}"></a>',
  filter: function(image) {
    return image.tags.indexOf('forest') >= 0;
  }
});
feed.run();
</script>
<div class="w3-container" style="padding: 128px 16px" id="instafeed">
	<h3 class="w3-center">
		<i class="fa fa-instagram w3-hover-opacity"></i>My Instagram
	</h3>
	<p class="w3-center w3-large">Tagged - 'Forest'</p>
</div>



	<!-- Team Section -->
	<div class="w3-container w3-center" style="padding: 128px 16px"
		id="team">
		<h3 class="w3-center">
			<i class="fa fa-user"></i> TEAM
		</h3>
		<p class="w3-center w3-large">DOZEN OF HOURS</p>
		<p class="w3-center w3-large"></p>
		<div class=" w3-row-padding" style="margin-top: 128px">
			<div class="w3-center w3-col l3 m6 w3-margin-bottom"></div>

			<div class="w3-center w3-col l3 m6 w3-margin-bottom">
				<div class="w3-image w3-card">
					<img src="img/team1.jpg?ver=1" alt="Donghoon" style="width: 100%">
					<div class="w3-container">
						<h3>Dong hoon</h3>
						<p class="w3-opacity">Developer</p>
					</div>
				</div>
			</div>
			
			<div class="w3-center w3-col l3 m6 w3-margin-bottom">
				<div class="w3-image w3-card">
					<img src="img/team2.jpg" alt="Hyeonjoo" style="width: 100%">
					<div class="w3-container">
						<h3>Hyeon joo</h3>
						<p class="w3-opacity">Art Director & Analyst</p>
					</div>
				</div>
			</div>
			<div class="w3-center w3-col l3 m6 w3-margin-bottom"></div>

		</div>
	</div>


	<!-- Work Section -->
<div class="w3-container" style="padding:128px 16px" id="work">
  <h3 class="w3-center">OUR WORK</h3>
  <p class="w3-center w3-large">What we've done for people</p>

  <div class="w3-row-padding" style="margin-top:64px">
    <div class="w3-col l3 m6">
      <img src="img/tech_mic.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="A microphone">
    </div>
    <div class="w3-col l3 m6">
      <img src="img/tech_phone.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="A phone">
    </div>
    <div class="w3-col l3 m6">
      <img src="img/tech_drone.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="A drone">
    </div>
    <div class="w3-col l3 m6">
      <img src="img/tech_sound.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Soundbox">
    </div>
  </div>

  <div class="w3-row-padding w3-section">
    <div class="w3-col l3 m6">
      <img src="img/tech_tablet.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="A tablet">
    </div>
    <div class="w3-col l3 m6">
      <img src="img/tech_camera.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="A camera">
    </div>
    <div class="w3-col l3 m6">
      <img src="img/tech_typewriter.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="A typewriter">
    </div>
    <div class="w3-col l3 m6">
      <img src="img/tech_tableturner.jpg" style="width:100%" onclick="onClick(this)" class="w3-hover-opacity" alt="A tableturner">
    </div>
  </div>
</div>



<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<!-- Modal for full size images on click-->
<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-xxlarge w3-black w3-padding-large w3-display-topright" title="Close Modal Image">��</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>

<!-- copyright -->
<div class="w3-container w3-light-grey">
			<h3>Railroad To Forest.</h3>
			<p>Phone : 010-3967-3325, 010-9003-4096 Copyright(c) 2018   Email : glee1228@naver.com    www.RailroadtoForest.com Allright Reserved.</p>
</div>


</body>
</html>
