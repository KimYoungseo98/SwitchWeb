<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.title {
   text-align: center;
   position: relative;
   display: block;
   font-weight: bold;
   padding: 60px;
}

.idnum {
   text-decoration-line: none;
   color: black;
}

.container {
   padding: 100px;
   text-align: center;
}
</style>
<%@ include file="/header.jsp"%>
</head>
<body>

   <div class="container">
  
      <h1>
         <span class="title">사전예약자 목록</span>
      </h1>
      <table border=1 class="table table-hover">
         <tr>
            <th>ID</th>
            <th>이름</th>
            <th>이메일</th>
            <th>전화번호</th>
            <th>예약상품</th>

            <c:forEach var="customer" items="${customerList}">
               <tr>
                  <td><a class="idnum"
                     href="CustomerDetails.do?customerid=${customer.customerId}">${customer.customerId}</a></td>
                  <td>${customer.name}</td>
                  <td>${customer.email}</td>
                  <td>${customer.phoneNumber}</td>
                  <td>${customer.pack}</td>
               </tr>
            </c:forEach>
      </table>
   </div>
 <div class=digImg><a href=#>
			<img src="img/dig.png"
				style="width: 100px; margin: auto; display: block"></a>
		</div>
</body>
<jsp:include page="/footer.jsp" />
</html>