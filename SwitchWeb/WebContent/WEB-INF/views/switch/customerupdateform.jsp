<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.updatecontainer {
   padding-top: 180px;
    text-align: center;
    padding-bottom:105px;
}
.updateTitle {
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

.imgButton {
   display: block;
   margin: 100px auto;
   background-color: white;
   border: 0px;
}   


.preImg {
   display: block;
   text-align: center;
   margin: 0 auto; 
}

/* .text {
   text-align: center;
   font-size: 15px;
} */

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/header.jsp"%>
</head>

<body>
<div class="updatecontainer">
<h1> <span class="updateTitle">사전예약자 수정</span></h1>
<br>
<br>
<form action="CustomerUpdate.do" method="post">

<div class=tableBox>
   <input class="form-control form-control-lg" type="text" value="${customer.customerId}" name="customerId" readonly style= "line-height: 2">
   <input class="form-control form-control-lg" type="text" value="${customer.name}" name="name" style= "line-height: 2">
   <input class="form-control form-control-lg" type="text" value="${customer.email}" name="email" style= "line-height: 2">
   <input class="form-control form-control-lg" type="text" value="${customer.phoneNumber}" name="phoneNumber" style= "line-height: 2">
      
   <select id="pack" name="pack" class="form-select" style= "line-height: 3; color: #7e7e7e">
    <option value="Pikachu" <c:if test="${customer.pack==Pikachu}">selected</c:if>
      > 레츠고! 피카츄</option>
     <option value="Eveee" <c:if test="${customer.pack==Eveee}">selected</c:if>
        > 레츠고! 이브이</option> 
	</select>
</div>
<br>
<input type="submit" value=" 저 장 "> <input type="reset" value=" 취 소 ">
</form>
</div>
 <div class=digImg><a href="CustomerList.do">
			<img src="img/dig.png"
				style="width: 100px; margin: auto; display: block"></a>
		</div>
</body>
<jsp:include page="/footer.jsp" />
</html>