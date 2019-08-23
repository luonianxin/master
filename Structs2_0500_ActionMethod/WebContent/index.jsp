<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
action 执行的时候并不一定要执行execute方法，<br>
可以在配置文件配置action的时候来指定执行哪个方法，也可以在调用的时候动态的指定DMI，推荐使用后者<br>
<a href="http://localhost:8080/Structs2_0500_ActionMethod/user/userAdd">添加用户</a>当要使用的方法有很多时，该方法会产生很多action，不推荐使用<br>
<a href="http://localhost:8080/Structs2_0500_ActionMethod/user/user!add">添加用户</a>
</body>
</html>