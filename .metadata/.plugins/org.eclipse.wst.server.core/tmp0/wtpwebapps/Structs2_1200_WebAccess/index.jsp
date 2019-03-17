<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3>取得Map类型的request，session，application，真实类型的HttpRequest，Httpsession，ServletContext的的引用</h3>
<br/>	<h3>
		前三者:依赖于容器<br>
		前三者:IOC<br>
		后三者:依赖于容器<br>
		后三者:IOC<br>
		
</h3>
	<form name="f"action="" method="post">
		用户名：<input name="name" type="text"/>
		&nbsp;密码：<input type="text" name="pwd"/><br>
		&nbsp;<button onclick="javascript:document.f.action='login/login1';document.f.submit();">submit1</button>&nbsp;
		<button onclick="javascript:document.f.action='login/login2';document.f.submit();">submit2</button>&nbsp;
		<button onclick="javascript:document.f.action='login/login3';document.f.submit();">submit3</button>&nbsp;
		<button onclick="javascript:document.f.action='login/login4';document.f.submit();">submit4</button>&nbsp;
	</form>

</body>
</html> 