<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登出</title>
</head>
<body>
	<%
		session.setAttribute("userlogined", "false");
		session.removeAttribute("userid");
		session.removeAttribute("username");
		session.removeAttribute("userpassword");
		response.sendRedirect("./Login.jsp");
	%>
</body>
</html>