<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.detailsContainer {
	padding-top: 180px;
    text-align: center;
    padding-bottom:100px;
}
.detailsTitle {
   text-align: center;
   position: relative;
   display: block;
   font-weight: bold;
}
/* 박스 테두리 */
.tableBox {
    border: 3px double transparent;
    border-radius: 9px;
    background-origin: border-box;
    background-clip: content-box,border-box;
    box-shadow: 0 0 5px 3px white;
    max-width: 1000px;
    margin: 0 auto;    
}

/* .imgButton {
   display: block;
   margin: 100px auto;
   background-color: white;
   border: 0px;
}    */




.text {
   text-align: center;
   font-size: 15px;
}
.buttonForm {
	background-color:#f0f0f0;
	border-radius:3px;
	border:1px solid #8f8f8f;
	display:inline-block;
	cursor:pointer;
	color:#000000;
	font-family:Arial;
	font-size:15px;
	padding:6px 13px;
	text-decoration:none;
}
.buttonForm:hover {
	background-color:#e5e5e5;
	color: black;
}
.buttonForm:active {
	position:relative;
	top:1px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/header.jsp"%>
</head>

<body>
<div class="detailsContainer">
<c:if test="${not empty customer.customerId}">
<h1> <span class="detailsTitle">사전예약자 상세정보</span></h1>
<br>
<br>

<div class=tableBox>
   <input class="form-control form-control-lg" type="text" value="${customer.customerId}" name="customerId" readonly style= "line-height: 2">
   <input class="form-control form-control-lg" type="text" value="${customer.name}" name="name" readonly style= "line-height: 2">
   <input class="form-control form-control-lg" type="mail" value="${customer.email}" name="email" readonly style= "line-height: 2">
   <input class="form-control form-control-lg" type="text" value="${customer.phoneNumber}" name="phoneNumber" readonly style= "line-height: 2">
   <input class="form-control form-control-lg" type="text" value="${customer.pack}" name="pack" readonly style= "line-height: 2">   
   
</div>
<br>
<a href="CustomerUpdate.do?customerid=${customer.customerId}" class="buttonForm">고객정보 수정</a>
<a href="CustomerDelete.do?customerid=${customer.customerId}" class="buttonForm">고객정보 삭제</a>
</c:if>

<c:if test="${empty customer.customerId}">
정보가 없습니다.
</c:if>
</div>
 <div class=digImg>
 <a href="CustomerList.do">
			<img src="img/dig.png"
				style="width: 100px; margin: auto; display: block"></a>
		</div>
</body>
<jsp:include page="/footer.jsp" />
</html>