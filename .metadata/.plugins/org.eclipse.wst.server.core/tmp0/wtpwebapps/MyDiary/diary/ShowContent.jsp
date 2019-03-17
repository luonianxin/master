<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.fzzdh.diary.DatabaseUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.css" >
<title>查看内容</title>
<%@ include  file="../SessionCheck.jsp"%>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("utf-8");
	int diaryid = Integer.parseInt(request.getParameter("diaryid"));
	int userid = Integer.parseInt(session.getAttribute("userid").toString());
	Connection conn = DatabaseUtil.getConnection();
	Statement stmt = conn.createStatement();
	String sql = "select * from diaryDetail where userid = "+userid+ " and diaryid ="+diaryid;
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
	String str = rs.getString("diarycontent");
	String title = rs.getString("diarytitle");
	DatabaseUtil.close(rs);
	DatabaseUtil.close(stmt);
	DatabaseUtil.close(conn);
	
%>
<div style="margin-left:35px;margin-bottom: 20px;margin-top: 10px"><%= title %></div>
<div style="margin-left:35px;margin-right: 30px"><%= str %></div>
<hr style="width:95% ;color:blue; height:2px ">
<span ><a href="../AllDiarys.jsp" style="text-decoration: none;"><h3 style="margin-left: 30px"><</h3> </a></span>
</body>
</html>