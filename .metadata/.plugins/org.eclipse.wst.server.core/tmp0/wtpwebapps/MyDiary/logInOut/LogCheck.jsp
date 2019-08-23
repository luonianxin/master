<%@page import="com.fzzdh.diary.DatabaseUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录验证</title>
<script src="../bootstrap-3.3.7/js/jquery-2.1.0.js"> </script>

 </head>
  
  <body onload="turnToURLByTime()">
  	<% 
  				String username=(String)request.getParameter("logusername");
  				String password=(String)request.getParameter("logpassword");
  				 boolean  flag = false;
  			
  	%>

	<% 
			
				Connection conn =  DatabaseUtil.getConnection();
				String sql="select * from user ";
				PreparedStatement  pstmt=conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
						while(rs.next()){
								String usrname=rs.getString("username");
								String pwd=rs.getString("userpassword");
								//System.out.println(username+"---"+pwd);
								if(usrname.equals(username) && password.equals(pwd)){
										flag=true;
										session.setAttribute("userlogined", "true ");
										session.setAttribute("username", usrname);
										session.setAttribute("userpassword", pwd);
										session.setAttribute("userid", rs.getString("userid"));
										break;
								}
						}
	%>
	<%
				if(flag){
	%>
						<div  >
						<font style="color: red;font-size: 28px">登录成功！</font>;
						</div>
						
						
	<%
			response.sendRedirect("../index.jsp");
				
				}else{
	 %>
	 
						<div >
						<font style="color: red;font-size: 28px">登录失败！</font>;
						
						</div>
			
	 <%
	 	response.sendRedirect("Login.jsp");
	 		}
	 %>
	<span id="prompt"></span>
   </body>

</html>