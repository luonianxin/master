<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<font color="blue"> namespace标签  name=“index”决定了action的访问路径， 默认为""，可以接收所有的action，namespace可以
写为/，或者/XXX,或者/XXX/YYY，对应的action访问路径为/index.action，/xxx/index.action,
/xxx/yyy/index.action

Action标签 具体返回的视图可以由用户自己定义的action来决定
具体Action的实现可以是一个普通java类，里面有public String execut方法即可 </font>
</body>
</html>