<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
html, body {
	text-align: center;
}

.deletecontainer {
	padding-top: 180px;
	text-align: center;
	padding-bottom: 100px;
}

.deleteTitle {
	text-align: center;
	position: relative;
	display: block;
	font-weight: bold;
}

.deleteform {
	margin: 10px;
}

.control {
	text-align: center;
	position: relative;
	width: 50%;
}

.deleteKey {
	margin-top: 30px;
}
</style>
<%@ include file="/header.jsp"%>
<body>
	<div class="deletecontainer">
		<h1>
			<span class="deleteTitle"">사전예약자 정보 삭제</span>
		</h1>
	</div>

	<div class="deleteform">
		<label for="exampleFormControlInput1" class="form-label">삭제할이메일을 한번 더 입력하세요.</label>
		<br>
		<br>
		<form action="CustomerDelete.do" method="post">
			<input type="hidden" name="customerid" value="${param.customerid}">
			<input type="email" name="email" placeholder="email"> 
			<input type="submit" value="삭 제">
		</form>
	</div>
	<br>
	<br>
	<br>
	<div class=digImg>
		<a href="CustomerList.do"> <img src="img/dig.png"
			style="width: 100px; margin: auto; display: block"></a>
	</div>
	
</body>
<jsp:include page="/footer.jsp" />
</html>