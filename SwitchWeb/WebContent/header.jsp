<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<style>
ul {
   width: 100%;
}

.headerli {
   float: left;
   list-style: none;
   text-align: center;
   width: 20%;
   height: 50px;
   background-color: #e60012;
   padding-top:5px;
   
}

header {
   position: relative;
   background: #e60012;
   text-align: center;
   display: block;
   width: auto;
   padding-top: 15px;
   position: fixed;
   top: 0;
   left: 0;
   right: 0;
   z-index:1;
}


.logo {
    position: relative;
    bottom: 30px;
    right: 300px;
}

#wrap {
   width: 1200px;
   margin: 3px;
   display: inline-block;
}

.dropdown {
   position: relative;
   display: inline-block;
}
.dropdown-content {
   display: none;
   position: absolute;
   font-weight: 100;
   background-color: #f8f8f8;
   min-width: 100px;
}
.dropdown-content a {
   display: block;
   text-decoration: none;
   color: rgb(37, 37, 37);
   font-size: 12px;
   padding: 12px 20px;
}
.dropdown-content a:hover {
   background-color: #ececec
}

.dropdown:hover .dropdown-content {
   display: block;
}



</style>
<header>
   <div class="header">
      <div id="wrap">
            <ul class="g-col-4">
               <li class="headerli"><a href="/index.jsp">
               <img class="logo" src="img/nintendoCI.png" alt="Logo" height="90"></a></li>
               <li class="headerli"><a href="gameInfo.jsp" class="gameInformation" style = "color: white; text-decoration: none;">게임 정보</a></li>
               <li class="headerli"><a href="CustomerInsert.do" class="PreRegistration" style = "color: white; text-decoration: none;">사전예약</a></li>
               <li class="headerli"><a href="faq.jsp" class="FAQ" style = "color: white; text-decoration: none;">고객지원</a></li>
               <li class="headerli">
                  <div class="dropdown">
                     <a class="dropbtn_icon" style = "color: white; text-decoration: none;">한국어</a>
                     <div class="dropdown-content">
                        <a href="#">English</a> <a href="#">日本語</a> <a href="#">简体中文</a>
                        <a href="#">繁體中文</a> <a href="#">Deutsch</a> <a href="#">Français</a>
                        <a href="#">Español</a> <a href="#">ภาษาไทย</a> <a href="#">Русский</a>
                     </div>
                  </div>
               </li>
            </ul>
      </div>
   </div>

</header>