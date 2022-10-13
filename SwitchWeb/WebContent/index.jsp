<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nintendo©「포켓몬스터 레츠고!」</title>

<style>
.card{
	width:1800px;
	height:800px;
	position:relative;
	z-index:-1;
	margin: auto;

}

/* .bx-viewport {
    width: 100%;
    overflow: hidden;
    position: relative;
    height: 935.156px;
    margin-top: 49px;
}
 */
.bx-wrapper {
    border: 5px solid #fff;
    background: #fff;
    box-shadow: none;
    max-width: 95%;
}

.preRegMove {
	display: flex;
	justify-content: center;	
	position: relative;
	width: 100%;
    margin-bottom: -200px;
}
</style>

<script>
   $(document).ready(function() {
      $('.slider').bxSlider();
   });
</script>
 <%@ include file="/header.jsp"%>
</head>
<body>
  
   <br>
   <div style="padding: 2px 2px 30px 30px; width: 98%;">
      
      <div class="slider">

         <div>
            <img class="card" src="img/1.png" title="slider" >
         </div>
         <div>
            <img class="card" src="img/2.png" title="slider">
         </div>
         <div>
            <img class="card" src="img/3.png" title="slider">
         </div>
      </div>
   </div>
    <div class="preRegMove" >
          <a href="CustomerInsert.do"><img src="img/mainPre.png"></a>
      </div>
    <jsp:include page="/footer.jsp" />
</body>
</html>