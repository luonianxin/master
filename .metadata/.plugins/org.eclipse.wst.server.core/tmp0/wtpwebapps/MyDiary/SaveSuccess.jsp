<%@page import="java.sql.Statement"%>
<%@page import="com.fzzdh.diary.*"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>所有日记</title>
<%@ include  file="SessionCheck.jsp"%>

</head>
<body style="margin-right:35px">
<% 
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("utf-8");
	Connection conn = DatabaseUtil.getConnection();
	int userid = Integer.parseInt(session.getAttribute("userid").toString());
	int diaryid = -1;
	String strid = request.getParameter("diaryid");
	diaryid = Integer.parseInt(strid);
	
	String s = request.getParameter("content");
	String newTitle = request.getParameter("title");
	String sql = "update  diaryDetail set diarytitle ='" +newTitle+"', diarycontent = '"+s+"' where userid = "+userid+" and diaryid = "+diaryid ;

	int retCode = DatabaseUtil.excuteUpdate(conn, sql);

%>

<%if( retCode==1){%>
	<font color="red" size="15px">修改成功！3s后返回</font><span style="margin-left: 15px"><a href="AllDiarys.jsp" style="text-decoration: none">直接返回</span>
	<%}response.setHeader("refresh", "10;URL= AllDiarys.jsp"); %>
		

</body>
</html>