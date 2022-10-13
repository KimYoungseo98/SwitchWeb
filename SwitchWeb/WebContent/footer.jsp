<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
   crossorigin="anonymous">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
   crossorigin="anonymous"></script>
<SCRIPT>
   function passWord() {
      var testV = 1;
      var pass1 = prompt('비밀번호를 입력해 주세요', 'password'); // 초기시 암호 물어보는 멘트
      while (testV < 3) {
         if (!pass1)
            history.go(-1);
         if (pass1.toLowerCase() == "1234") { // 암호지정
            alert('관리자 확인 완료'); // 암호가 맞았을때 나오는 멘트
            // window.open('http://'); // 이동할 웹페이지 지정 - 새창으로 뜰때
            location.href = 'CustomerList.do'; // 이동할 웹페이지 지정 - 현재창에서 이동

            break;
         }
         testV += 1;
         var pass1 = prompt('비밀번호를 잘못 입력했습니다.', 'password'); // 암호가 틀렸을때 멘트
      }
      if (pass1.toLowerCase() != "password" & testV == 3)
         history.go(-1);
      return " ";
   }
</SCRIPT>
<style>
html, body {
   margin: 0;
   padding: 0;
   width: 100%;
   height: 100%;
}

.wrapper {
   height: auto;
   min-height: 20%;
   padding-top: 30px;
   padding-bottom: 30px;
   height: auto;
}

footer {
   text-align: center;
   padding-top: 15px;
   padding-bottom: 10px;
   background: #e60012;
   color: white;
   position: relative;
   transform: translateY(-100%) important;
   text-decoration: none;
}
</style>

<body>
   <div class="wrapper">
      <div id="header"></div>
      <div id="container"></div>
   </div>

   <footer>
      <div></div>
      	상호명 : 한국닌텐도주식회사 / 대표자명 : 미우라 타카히로 <br>
  	    <p><form name="myform">
   
         ©2020 Pokémon. ©1995-2020 Nintendo/Creatures Inc./GAME FREAK inc.<br>
         <button type="button" class="btn" style="color: white;" onclick="passWord()">
            (Korea Software Industry Association) <b>3rd Project</b>
         </button>
      </form>
      </footer>
</body>