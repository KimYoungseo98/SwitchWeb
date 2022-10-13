<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
   padding-top: 130px;
}

.switchQnaSearchBox {
   text-align: center;
   position: relative;
   display: block;
   margin-top: 56px;
   margin-bottom: 80px;
}

.switchQnaCategories {
   display: inline-block;
   width: 150px;
   height: 48px;
   border: 1px solid #858585;
   border-radius: 0;
   background: transparent;
}

.switchQnaSearchInputBox {
   display: inline-block;
   width: 700px;
   box-sizing: border-box;
   padding-right: 100px;
   position: relative;
}

.switchQnaSearchInputBox input {
   display: block;
   width: 100%;
   padding: 0 15px;
   border: 1px solid #858585;
   border-right: none;
   border-radius: 0;
   box-sizing: border-box;
   font-size: 14px;
   height: 48px;
   line-height: 48px;
}

.switchQnaSearchInputBox button {
   position: absolute;
   right: 0;
   top: 0;
   width: 100px;
   text-align: center;
   color: #fff;
   font-size: 14px;
   background-color: #e60012;
   cursor: pointer;
   height: 48px;
   line-height: 48px;
   border: none;
}

.switchQnaDlTip {
   position: absolute;
   left: 0;
   width: 50px;
   height: 50px;
   line-height: 50px;
   color: #fff;
   border-radius: 4px;
   background-color: #171717;
   text-align: center;
   font-size: 24px;
   font-weight: bold;
}

.switchQnaDl>p, .switchQnaDl>div {
   min-height: 50px;
   position: relative;
   padding-left: 70px;
   color: #111;
   display: table;
   width: 100%;
   box-sizing: border-box;
   font-size: 16px;
   cursor: pointer;
}

.switchQnaList>li {
   border-bottom: 1px solid #e6e6e6;
   border-top: 1px solid #e6e6e6;
   padding: 20px 0;
   display: list-item;
   text-align: -webkit-match-parent;
   list-style: none;
}

.switchQnaDlCell {
   display: table-cell;
   vertical-align: middle;
   height: 100%;
   line-height: 150%;
   color: #111;
   text-decoration: none;
}

.ulcontatiner {
   diaplay: block;
   padding-left:250px;
    max-width: 1400px;
    position: relative;
}

</style>
<%@ include file="/header.jsp"%>
</head>
<body>
   <article>

      <h1>
         <span class="title">Nintendo Switch Q&A</span>
      </h1>


      <div class="switchQnaSearchBox">

         <form method="get" id="searchFrm">
            <fieldset class="switchQnaSearchForm">
               <select name="cateType" class="switchQnaCategories">
                  <option value="">카테고리 전체</option>
                  <option value="Nintendo Switch">Nintendo Switch</option>
                  <option value="닌텐도 어카운트">닌텐도 어카운트</option>
                  <option value="모여봐요 동물의 숲">모여봐요 동물의 숲</option>
                  <option value="마이닌텐도 포인트 프로그램">마이닌텐도 포인트 프로그램</option>
               </select>
               <div class="switchQnaSearchInputBox">
                  <input type="text" name="searchWord" value=""
                     placeholder="키워드를 입력해주세요.">
                  <button type="submit" name="">검 색</button>
               </div>
            </fieldset>
         </form>

      </div>
      <div>
      <div class="ulcontatiner" >
         <ul class="switchQnaList">
            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=267&page=1&cateType=" class="switchQnaDlCell">[Nintendo
                     Switch] 매장에서 구입한 「선불 카드」나 「다운로드 카드」, 「Nintendo Switch Online 이용권」
                     번호는 어디에 입력하면 되나요?</a>
               </p>
            </li>

            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=266&page=1&cateType=" class="switchQnaDlCell">[마이닌텐도
                     포인트 프로그램] 판매처에서 소프트웨어의 다운로드 카드를 구입했을 경우, 마이닌텐도 골드 포인트를 받을 수 있을까요?</a>
               </p>
            </li>

            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=265&page=1&cateType=" class="switchQnaDlCell">[Nintendo
                     Switch] 닌텐도 e숍에서 다운로드 카드를 사용하여 소프트웨어와 교환하려고 할 때 에러 코드
                     「2813-0131」이 표시됩니다.</a>
               </p>
            </li>

            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=263&page=1&cateType=" class="switchQnaDlCell">[Nintendo
                     Switch] 매장에서 「닌텐도 선불 카드」나 「다운로드 카드」, 「Nintendo Switch Online
                     이용권」을 구입하였습니다만, 너무 긁어서 번호를 확인할 수 없습니다.</a>
               </p>
            </li>

            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=258&page=1&cateType=" class="switchQnaDlCell">[Nintendo
                     Switch] 소프트나 갱신 데이터를 다운로드하려고 하면, 에러 코드 「2123-1502」가 표시됩니다.</a>
               </p>
            </li>

            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=257&page=1&cateType=" class="switchQnaDlCell">[Nintendo
                     Switch] 「저장 데이터 맡기기」에 에러가 발생했는지 확인하고 싶어요.</a>
               </p>
            </li>

            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=255&page=1&cateType=" class="switchQnaDlCell">[닌텐도
                     어카운트] 「2단계 인증」을 설정하고 싶어요.</a>
               </p>
            </li>

            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=254&page=1&cateType=" class="switchQnaDlCell">[Nintendo
                     Switch] 소프트웨어를 기동하려고 하면 「이 유저로는 플레이할 수 없습니다. 구입하지 않은 경우 닌텐도 e숍에서
                     구입할 수 있습니다.」라고 표시됩니다.</a>
               </p>
            </li>

            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=253&page=1&cateType=" class="switchQnaDlCell">[Nintendo
                     Switch] 본체에 처음부터 들어있는 다운로드 소프트웨어를 삭제해 버렸습니다. 어떻게 하면 좋을까요?</a>
               </p>
            </li>

            <li class="switchQnaDl">
               <p>
                  <span class="switchQnaDlTip">Q</span> <a href="https://www.nintendo.co.kr/support/switch/qna/view.php?no=252&page=1&cateType=" class="switchQnaDlCell">[Nintendo
                     Switch] 본체에 처음부터 들어 있는 소프트웨어를 닌텐도 어카운트에 등록하려고 하면 에러 코드
                     「2813-0171」이 표시됩니다.</a>
               </p>
            </li>

         </ul>

      </div>


   </article>


</body>
<jsp:include page="/footer.jsp" />
</html>