<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 引用标签库 -->
    <%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	用户添加错误！
	<!-- 使用s标签获取内容 -->
	<s:fielderror fieldName="name" theme="simple">
	</s:fielderror><br/>
	<s:property value="errors.name[0]"/>
	<s:property value="errors.name[1]"/>
	<s:debug></s:debug>
</body>
</html>