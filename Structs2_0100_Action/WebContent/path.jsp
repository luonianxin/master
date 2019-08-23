<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	String path=request.getContextPath();
	String basePath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
    <base href="<%= basePath%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>

<br>
	action的路径，是根据action的路径来决定的，不是根据jsp路径决定的，所以尽量别用相对路径,这样很麻烦，拓展
	性比较差以后一改动namespace的路径名就不能用了<br>
	<td> 项目名 contextPath:<%= request.getContextPath() %></td><br>
	<td> 协议 Scheme:<%= request.getScheme() %></td><br>
	<td> 服务器名字 ServerName:<%= request.getServerName() %></td><br>
	<td> 服务器端口号： ServerPort:<%= request.getServerPort() %></td><br>
	<font clolor="blue"> 第一种方法解决path问题,在最前面head里添加以下内容，然后在标签前面手动添加 < %= basePath % >：
		String basePath= request.getScheme()+"://"+request.getServerName()+":"+
		request.getServerPort()+request.getContextPath()+"/";</font><br>
	<font color="blue"> 第二种方法解决path问题,在最前面head里添加 base标签 "href="<%=basePath %>" </font>
	<a href="index.jsp" >index.jsp</a><br>
</body>
</html>