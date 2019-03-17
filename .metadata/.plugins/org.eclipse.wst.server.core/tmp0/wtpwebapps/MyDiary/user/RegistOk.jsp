<%@page import="com.fzzdh.diary.DatabaseUtil"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册成功</title>
<style type="text/css">
	#hinter{
		margin-left: 20%;
		margin-top: 10%;
	}
</style>
<% boolean flag = false;%>
</head>
<body>
		
		<% 
  				String username=(String)request.getParameter("regusername");
  				String password=(String)request.getParameter("regpassword");
  				String confirmpwd=(String)request.getParameter("regconfirmpwd");
  				if(password.equals(confirmpwd)){
  					flag=true;
  				}
  		%>

		<% 
				
				
			
				Connection conn = DatabaseUtil.getConnection();
				String sql="insert into user(userid,username,userpassword) values(null,?,?)";
				PreparedStatement  pstmt = DatabaseUtil.getPreStatement(conn, sql);
				pstmt.setString(1, username);
				pstmt.setString(2, password);
				int i= pstmt.executeUpdate();
				DatabaseUtil.close(pstmt);
				DatabaseUtil.close(conn);
				
				
				
		%>
		<% 
				if(flag)
				{
		%>
			<div id="hinter" style="margin-top:15px "align="center"><h1>注册成功，5S后自动跳转到登录界面</h1></div>
	<%
				} else{
	%>
			<div id="hinter" style="margin-top:15px "align="center"><h1>注册失败，5S后自动跳转到登录界面</h1></div>
	<% 
	}
	%>
	<% response.setHeader("Refresh","5;URL=../logInOut/Login.jsp");%>
	
	
</body>
</html>