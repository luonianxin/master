<%@page import="com.fzzdh.diary.DatabaseUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<%@ include  file="../SessionCheck.jsp"%>
</head>
<body>
	<%
		int userid=-1;
		userid = Integer.parseInt(session.getAttribute("userid").toString());
		String newPWD = request.getParameter("newPWD");	
	if(userid !=-1 && newPWD !=null)
	{
		Connection conn = DatabaseUtil.getConnection();
	%>
	<%
		int row = DatabaseUtil.UpdatePasswd(conn, userid, newPWD);
		DatabaseUtil.close(conn);
		if(row==1){
	%>
	<h1>修改成功,下次登录请用新密码登录</h1>
<% 	
		}
	}
%>

</body>
</html>