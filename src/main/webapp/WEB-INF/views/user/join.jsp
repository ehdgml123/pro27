<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/csss/joindo.css" rel="stylesheet"/>
<link href="${path}/resources/csss/index.css" rel="stylesheet"/> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
 <%@ include file="../includes/header.jsp"%>
<div id="login-warp">
     <div class="sub-conts login util-width login-info">
         <div class="page-tit">
            <h1>회원가입</h1>
         </div>
         <div class="rq-form" >
             <div class="main-txt-group">
                <h2 class="main-txt"></h2>
             </div>
             <form action="" method="" id="signupForm">
             <div id="divid" class="box-input">
                <div class="input-wrap">
                   <input id="email" type="text" name="email" placeholder="이메일(아이디)를 입력해주세요" class="input-default is-delete" title="email">
                </div>
                <div class="input-wrap">
                   <input id="name" type="text" name="password" placeholder="이름을 입력하세요" class="input-default is-delete" title="name">
                </div>
                <div class="input-wrap">
                   <input id="password" type="password" name="password" placeholder="비밀번호 를 입력하세요" class="input-default is-delete" title="password">
                </div>
                <div class="input-wrap">
                   <input id="phone" type="text" name="phone" placeholder="핸드폰 번호 를 입력하세요" class="input-default is-delete" title="phone">
                </div>
                <div class="input-wrap">
                   <input id="addr" type="text" name="addr" placeholder="주소 를 입력하세요" class="input-default is-delete" title="addr">
                </div>
             </div>
              </form>
             <button class="btns wid md-ripples ripples-light" type="submit" onclick="">회원가입</button>
             </div>
         </div>
     </div>
     <%@ include file="../includes/mainfooter.jsp"%>
</body>
</html>
<script>
  document.getElementById('signupForm').addEventListener('submit', function(event) {
    event.preventDefault(); // 기본 폼 제출 동작 막기
    
    // 입력 필드 가져오기
    const email = document.getElementById('email').value.trim();
    const name = document.getElementById('name').value.trim();
    const password = document.getElementById('password').value.trim();
    const phone = document.getElementById('phone').value.trim();
    const addr = document.getElementById('addr').value.trim();

    // 유효성 검사
    if (!validateEmail(email)) {
      alert('유효한 이메일 주소를 입력하세요.');
      return;
    }

    if (name === '') {
      alert('이름을 입력하세요.');
      return;
    }

    if (password.length < 8) {
      alert('비밀번호는 최소 8자 이상이어야 합니다.');
      return;
    }

    if (!validatePhone(phone)) {
      alert('유효한 전화번호를 입력하세요.');
      return;
    }

    if (addr === '') {
      alert('주소를 입력하세요.');
      return;
    }

    alert('회원가입 성공!');

  });


  function validateEmail(email) {
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return regex.test(email);
  }


  function validatePhone(phone) {
    const regex = /^\d{10,11}$/; // 10~11자리 숫자만 허용
    return regex.test(phone);
  }
</script>