<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> 요청하신 서비스를 처리하던 중에 문제가 발생했습니다</h1>
<a href="controllerB.jsp?action=main">메인으로 돌아가기</a>
<hr>
발생한 예외: ${pageContext.errorData.throwable } <!-- 이렇게도 예외를 볼 수 있음 (애초에 실무에서는 에러를 사용자에게 보여주지 않음) -->



</body>
</html>