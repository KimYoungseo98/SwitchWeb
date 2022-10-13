<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/cnt.js"></script>
<link rel="stylesheet" type="text/css" href="css/preReg.css">

<meta charset="UTF-8">
<title>Insert title here</title>

<style>
@font-face {
    font-family: 'RixInooAriDuriR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2207-01@1.0/RixInooAriDuriR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
.imgButton {
   display: block;
   margin: 100px auto;
   background-color: white;
   border: 0px;
}   
.Time { /* 카운트다운 */
	display: block;
	margin: 50px auto;
	text-align: center;
	font-family: 'RixInooAriDuriR';
	color:#40b96b;	
}
.tableBox { /* 박스 테두리 */
    border: 3px double transparent;
    border-radius: 9px;
    background-origin: border-box;
    background-clip: content-box,border-box;
    box-shadow: 0 0 5px 3px white;
    max-width: 1000px;
    margin: 0 auto;    
}
.preImg { /* 이미지 가운데 정렬 */
   display: block;
   text-align: center;
   margin: 0 auto; 
}
.text { /* 텍스트 가운데 정렬 */
   text-align: center;
   font-size: 15px;
}

</style>

<%@ include file="/header.jsp"%>
</head>

<body>

	<form action="CustomerInsert.do" method="post">

		<img src="img/button1.png" class="imgButton">
		
		<div class="Time">
			<h1>사전 예약까지 서두르세요!</h1>
			<h1 id="countDown"></h1>
		</div>
		
		<div class=tableBox>
			<input class="form-control form-control-lg" type="text"
				placeholder="아이디" name="customerId" style="line-height: 2">
			<input class="form-control form-control-lg" type="text"
				placeholder="이름" name="name" style="line-height: 2"> <input
				class="form-control form-control-lg" type="text" placeholder="이메일"
				name="email" style="line-height: 2"> <input
				class="form-control form-control-lg" type="text" placeholder="전화번호"
				name="phoneNumber" style="line-height: 2"> <select
				name="pack" class="form-select"
				style="line-height: 3; color: #7e7e7e">
				<option selected>select</option>
				<option value="Pikachu">레츠고! 피카츄</option>
				<option value="Eveee">레츠고! 이브이</option>
			</select>
		</div>
		<input type="image" src="img/button2.png" class="imgButton"
			style="margin: 20px auto" onclick="cancelCheck()"></input>
	</form>

	<div class=preImg>
		<img src="img/pre1.png">
	</div>
	<div class=preImg>
		<img src="img/pre2.png">
	</div>
	<div class=preImg>
		<img src="img/pre3.png">
	</div>
	<div class=text>
		<br>
		<br>상품명<br>
		<br>Nintendo Switch 「포켓몬스터 레츠고! 피카츄」 세트(몬스터볼 Plus 포함)<br>
		Nintendo Switch 「포켓몬스터 레츠고! 이브이」 세트(몬스터볼 Plus 포함)
	</div>
	
	<script>
            function cancelCheck() {

                if (confirm("사전예약을 하시겠습니까?") == true){    //확인
                   alert("11월 16일 만나요!");
                    document.removefrm.submit();

                }else{  

                    return false;

                }

               }
            </script>
</body>
<jsp:include page="/footer.jsp" />
</html>