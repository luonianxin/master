<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*" %>
<% 
SimpleDateFormat ft = 
new SimpleDateFormat ("yyyy/MM/dd");
%>
<%@ include  file="SessionCheck.jsp"%>
</head>

<body style="background-color: gray;background-image: url('./img/background.png');overflow:hidden">
	<div style="width:100%;height:100%;margin-top:-4px;margin-left:5px">	
	<span >
		<img src="./img/site_logo.png" style="width:130px;height:40px;margin-top: 2px"></img>
	</span>
	
	</div>
	
	<div style="margin-top:-35px;margin-left:150px">
		<span>
			<font style="font-size: 22px;font-family:sans-serif;">记录生活点滴</font>
			<font id="datetime" style="margin-left:10px;color:threedhighlight;font-size: 15px"><%= ft.format(new Date())%></font>
		</span>
	</div>
	
	
</body>
</html>