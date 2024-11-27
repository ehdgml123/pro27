<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/resources/csss/memberlogin.css" rel="stylesheet"/> 
<link href="${path}/resources/csss/index.css" rel="stylesheet"/> 
</head>
<body>
 <%@ include file="../includes/header.jsp"%>
 <div id="login-warp">
     <div class="sub-conts login util-width login-info">
         <div class="page-tit">
            <h1>로그인</h1>
         </div>
         <div class="rq-form">
             <div class="main-txt-group">
                <h2 class="main-txt">가입한 아이디와 비밀번호를 확인해주세요.</h2>
             </div>
             <form action="" method="">
             <div id="divid" class="box-input">
                <div class="input-wrap">
                   <input id="email" type="text" name="email" placeholder="이메일(아이디)를 입력해주세요" class="input-default is-delete" title="email">
                </div>
                <div class="input-wrap">
                   <input id="password" type="password" name="password" placeholder="비밀번호 를 입력하세요" class="input-default is-delete" title="password">
                </div>
             </div>
              </form>
             <button class="btns wid md-ripples ripples-light" type="button" onclick="">로그인</button>
             
             </div>
         </div>
     </div>
  <%@ include file="../includes/mainfooter.jsp"%>
</body>
</html>
<script>

</script>