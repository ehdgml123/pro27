<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/csss/UserEdit.css" rel="stylesheet"/>
<link href="${path}/resources/csss/index.css" rel="stylesheet"/>
</head>
<body>
 <%@ include file="../includes/header.jsp"%>
 <div class="Edit-wrap">
    <div class="sub-conts join util-width find-finish" id="mainUserUpdate">
        <div class="page-tit">
          <h1>회원정보 수정</h1>
        </div>
        <div class="cardList-wrap">
           <h3 class="cardList-title">
              가입정보 변경
           </h3>
           <div class="cardList">
            <form>
              <div class="box-input">
                  <label for="phoneNum" class="input-label">이메일(아이디)</label>
                  <div class="input-wrap">
                    <input id="email" name="email" type="text" value="" class="input-default is-delete" readonly>
                  </div>
              </div>
               <div class="box-input">
                  <label for="phoneNum" class="input-label">이름</label>
                  <div class="input-wrap">
                    <input id="name" name="name" type="text" value="" class="input-default is-delete" readonly>
                  </div>
              </div>
               <div class="box-input">
                  <label for="phoneNum" class="input-label">비밀번호</label>
                  <div class="input-wrap">
                    <input id="password" name="password" type="password" value="" class="input-default is-delete">
                  </div>
              </div>
              <div class="box-input">
                  <label for="phoneNum" class="input-label">전화번호</label>
                  <div class="input-wrap">
                    <input id="phone" name="phone" type="text" value="" class="input-default is-delete" >
                  </div>
              </div>
              <div class="box-input">
                  <label for="phoneNum" class="input-label">주소</label>
                  <div class="input-wrap">
                    <input id="addr" name="addr" type="text" value="" class="input-default is-delete" >
                  </div>
              </div>
            </form>  
           </div>
           <div class="btn-group">
              <button class="btns md-ripples ripples-light" onclick="" type="submit">수정완료</button>
              <button class="btns md-ripples ripples-light"type="reset">다시 작성하기</button>
              <button class="btns1 md-ripples ripples-light" onclick="" type="submit">회원탈퇴</button>
           </div>
        </div>
    </div>
 </div>   
  <%@ include file="../includes/mainfooter.jsp"%>
</body>
</html>