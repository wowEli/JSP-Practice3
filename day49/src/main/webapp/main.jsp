<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>

	<div id="header">
		<h1>내 에어팟 어딨어..</h1>
		<div class="gnb"><!-- 가로 네이게이션 바가 흔하지만 세로도 있어서 class -->
			<ul>
				<li><a>메인으로</a></li>
				<li><a>회원가입</a></li>
				<li><a>로그인</a></li>
			</ul>
			
		</div>
	</div>
	
	
	
	<div id="wrapper">
		<div id="content">
			<h2>글 등록하기</h2>
			<!-- 뷰 작업 시 내가 컨트롤러에게 받아야 할 값을 따로 메모장에 적어두면 좋다 + 주는 값도 적기 -->
			<form action="controllerB.jsp?action=insertB" method="post">
				<input type="hidden" name="mid" value="${mid }"> <!-- 로그인한 사람의 아이디 정보 -->
				<input type="text" name="msg"	placeholder="글 내용을 작성해주세요.">
				<input type="submit" value="글쓰기">
				<!-- 만약에 로그인을 하지 않았다면 "로그인을 한 후에 이용해주세요" 띄우기 -->
			</form>
		</div>
		
		<div id="main">
			<h2>글 목록</h2>
			<c:forEach var="v" items="${datas }"><!-- datas안에 있는 값은 BoardSet이므로 v.boardVO.bid 이렇게 써야함 -->
				
				<c:set var="b" value="${v.boardVO }"/> <!-- 그래서 set을 이용해서 쉽게 사용하도록 코딩  -->
				
				<h3>[${b.mid }] ${b.msg } [좋아요 ${b.favcnt } | 댓글 ${b.rcnt	 }]</h3>
				<div class="reply">
					<ul>	
					
						<c:forEach var="r" items="${v.rList }">
							<li>[${r.mid }] ${r.rmsg }</li>
						</c:forEach>
					
					</ul>		
				</div>
				
				<div class="reply">
					<form action="controllerB.jsp?action=insertR" method="post">
						<input type="hidden" name="mid" value="${mid }">
						<input type="hidden" name="bid" value="${b.bid }">
						<input type="text" name="rmsg" placeholder="댓글 내용 작성">
						<input type="submit" value="댓글 등록">
					</form>
				</div>
				
			</c:forEach>
		</div>
		<a>더보기&gt;&gt;</a>
		
	</div>
	
	
	
	
	<div id="footer">
		회사소개 | 이용약관 | <strong>개인정보처리방침</strong> | 보호정책 | 고객센터 <strong>Corp.</strong>
	</div>
</body>
</html>