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

<script>alert('${sessionScope.name}'+"님 반갑습니다!")</script>

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
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
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
  <button class="tablinks" onclick="openCity(event, '연남동 구간')"><b>연남동 구간</b></button>
  <button class="tablinks" onclick="openCity(event, '와우교 구간')"><b>와우교 구간</b></button>
  <button class="tablinks" onclick="openCity(event, '신수동 구간')"><b>신수동 구간</b></button>
  <button class="tablinks" onclick="openCity(event, '대흥동 구간')"><b>대흥동 구간</b></button>
  <button class="tablinks" onclick="openCity(event, '염리동 구간')"><b>염리동 구간</b></button>
  <button class="tablinks" onclick="openCity(event, '새창로 구간')"><b>새창로 구간</b></button>
  <button class="tablinks" onclick="openCity(event, '원효로 구간')"><b>원효로 구간</b></button>
</div>

<div id="연남동 구간" class="tabcontent">
  <h3>1. 연남동 구간 (1,268m)</h3>
  <p><b>| KEYWORD: #연트럴파크 #홍대입구역 #3번출구 #은행나무 |</b>
  <br><br>홍대입과 입접해 있어, 젊음과 공연예술로 활기가 넘치는 구간이다.<br><br>
  폐철길을 따라 늘어선 1km에 달하는 은행나무 길은 가을 산책로로 제격이다.
  </p>
</div>

<div id="와우교 구간" class="tabcontent">
  <h3>2. 와우교 구간(366m)</h3>
  <p> <b>| KEYWORD: #땡땡거리 #문화예술공간 #소강장 #소풍 #연인 #데이트 |</b>
  <br><br>
   옛날 기차가 지나갈 때면 건널목에 차단기가 내려지고 '땡땡' 소리가 울린다고 해서 '땡땡거리'로 불리는 곳이다. <br><br>
   기찻길이 일상공간이던 창전동을 떠올리게 하는 조형물과 문화예술공간을 조성했다 .
  <br><br> 다목적 소강장과 공연장이 함께 있어 연인들의 소풍 코스로 추천된다.</p> 
</div>

<div id="신수동 구간" class="tabcontent">
  <h3>3. 신수동 구간(390m)</h3>
  <p><b>| KEYWORD: #잔디마당 #레일가든 #소광장 #서강대역1번출구 |</b>
  <br><br>일제 강점기 인공하천인 '선통물천'의 재현을 위해 만든 실개천이 특징이다.
  <br> <br>
  학생들과 지역커뮤니티를 위한 넓은 잔디마당과 대흥동 구간과 연계한 레일가든, 소광장등이 볼 거리이다. 
   <br><br>
   서강대 경의 중앙선 1번 출구와 연결되어 있다.
  </p>
</div>


<div id="대흥동 구간" class="tabcontent">
  <h3>4. 대흥동 구간(760m)</h3>
  <p><b>| KEYWORD: #공덕 #대흥동 #벚꽃 #봄 |</b>
  <br><br>경의선 숲길 중 가장 먼저 개통된 구간으로 상업지역인 공덕과 주거지인 대흥일대를 모두 고려하여 산책로와 자전거길을 조성했다.
  <br> <br>
  특히, 봄이면 벚꽃이 만개하여 서울의 서울이 벚꽃 명소로 유명하다.</p>
</div>

<div id="염리동 구간" class="tabcontent">
  <h3>5. 염리동 구간(150m)</h3>
  <p><b>| KEYWORD: #메타세콰이어 #느티나무 #녹색정원 #연못 |</b>
  <br><br>메타세콰이어길과 느티나무 터널이 많든 '빌딩 속 녹색정원'  과거 철길을 재현한 공간이다. 
   <br><br>
  작은 연못, 잔디밭, 곳곳에 심은 나무들이 어우러져 알찬 구간이다. </p>
</div>

<div id="새창로 구간" class="tabcontent">
  <h3>6.새창로 구간(630m)</h3>
  <p><b>| KEYWORD: #남산 #N서울타워 #용산 #경치 |</b>
  <br><br>공덕역 10번출구에서 효창공원까지 이어지는 새창로 구간은 경의선으로 단절되었던 구간에 대형 소나무를 심어 능선으 복원했다.
  <br> <br>
 특히 남산과 N서울타워, 마포 동부지역, 용산 서부지역이   시원하게 내려다보이는 조망공간이 있다. </p>
</div>

<div id="원효로 구간" class="tabcontent">
  <h3>7. 원효로 구간(690m)</h3>
  <p><b>| KEYWORD: #히스토리월 #historywall #경의선역사 #열매  |</b>
  <br><br>옛 화차와 1906년 개통된 옛 경의선에 대한 히스토리월 (wall)을 설치되어 있어 아이들과 함께 역사적 의의를 되새겨 보기 좋다.
  <br><br>
 특히, 다른 구간에 비해 유실수가 많기 때문에 사계절 다양한 열매를 관찰할 수  있다. </p>
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
      var myaddress = '동교동';// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
      naver.maps.Service.geocode({address: myaddress}, function(status, response) {
          if (status !== naver.maps.Service.Status.OK) {
              return alert(myaddress + '의 검색 결과가 없거나 기타 네트워크 에러');
          }
          var result = response.result;
          // 검색 결과 갯수: result.total
          // 첫번째 결과 결과 주소: result.items[0].address
          // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
          var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
          map.setCenter(myaddr); // 검색된 좌표로 지도 이동
          // 마커 표시s
          var marker = new naver.maps.Marker({
            position: myaddr,
            map: map
          });
          // 마커 클릭 이벤트 처리
          naver.maps.Event.addListener(marker, "click", function(e) {
            if (infowindow.getMap()) {
                infowindow.close();
            } else {
                infowindow.open(map, marker);
            }
          });
          // 마크 클릭시 인포윈도우 오픈
          var infowindow = new naver.maps.InfoWindow({
              content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
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
  <span class="w3-button w3-xxlarge w3-black w3-padding-large w3-display-topright" title="Close Modal Image">×</span>
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
