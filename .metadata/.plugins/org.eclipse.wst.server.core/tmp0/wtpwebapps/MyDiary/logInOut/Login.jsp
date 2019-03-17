<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>登录</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link rel="stylesheet"  href="../bootstrap-3.3.7/css/bootstrap.min.css"/>
	
<script src="../bootstrap-3.3.7/js/jquery-2.1.0.js"  type="text/javascript"></script>
<script src="../bootstrap-3.3.7/js/bootstrap.min.js"  type="text/javascript"></script>

<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*" %>
<% 
	SimpleDateFormat ft = 
	new SimpleDateFormat ("yyyy/MM/dd");
%>    
      
 <style type="text/css">
   input{
	margin-left: 15px;      				
     }
#logReg{
  width: 330px;
  height: 300px ; 
  background-color: white ;
  margin-left: 70% ;
  margin-top: 12%;
}
      	</style>	
</head>

<body style="background-color: gray;background-image: url('../img/background.png');overflow:hidden">
	
	
	<div style="width:100%;height:100%;margin-left:5px">	
	<span >
		<img src="../img/site_logo.png" style="width:130px;height:40px;margin-top: 5px"></img>
	</span>
	
	</div>
	
	<div style="margin-left:150px;margin-top:-38px ">
		<span>
			<font style="font-size: 22px;font-family:sans-serif;">记录生活点滴</font>
			<font id="datetime" style="margin-left:10px;color:threedhighlight;font-size: 15px"><%= ft.format(new Date())%></font>
		</span>
	</div>
	
	

<div id="logReg" >
	<!-- 选项卡菜单-->
	<ul id="LogInTab" class="nav nav-tabs" role="tablist" style="float: none;text-align: center">
	    <li class="active" style="width: 50%;height: 25px"><a href="#login" role="tab" data-toggle="tab" >
	    <font style="font-size: 18px"><b>登录</b></font></a></li>
	    <li style="width: 50%"><a href="#regist" role="tab" data-toggle="tab">
	    <font style="font-size: 18px;"><b>注册</b></font></a></li>
	</ul>
	
	<!-- 选项卡面板 -->
	<div id="logInTabContent" class="tab-content">
	    <div class="tab-pane active" id="login">
			<form role="form" name="logform" action="<%=request.getContextPath() %>/logInOut/LogCheck.jsp" onsubmit=" return checkdata()"method="post">
				  <div class="form-group">
				    <input type="text" class="form-control" id="logusername" name="logusername" placeholder="请输入用户名" 
				    style="margin-top: 25px;height:42px;width:300px;">
				    <input type="password" class="form-control" id="logpassword" name="logpassword" placeholder="请输入密码" 
				    style="margin-top: 5px;height: 42px ;width:300px;">
				     <span id="error" style="margin-left: 15px;margin-top: 5px"></span>
				  </div>
					
  					<button type="submit" class="btn btn-default" style="width:70%;text-align: center; font-size:18px; margin-left: 55px;margin-top:25px;background-color: orange;color: white">
  					登&nbsp;&nbsp;&nbsp;&nbsp;陆</button>
			</form>
		</div>
		
	    <div class="tab-pane " id="regist">
					<form role="form"  name="regform" action="<%=request.getContextPath() %>/user/RegistOk.jsp" onsubmit="return checksame()"method="post">
				  <div class="form-group">
				    <input type="text" class="form-control" id="regusername" name="regusername"placeholder="请输入用户名" 
				    style="margin-top: 25px;height:42px;width:300px;">
				    <input type="password" class="form-control" id="regpassword" name="regpassword" placeholder="请输入密码" 
				    style="margin-top: 5px;height: 42px ;width:300px;">
				    <input type="password" class="form-control" id="regconfirmpwd" name="regconfirmpwd" placeholder="请确认密码" 
				    style="margin-top: 5px;height: 42px;width:300px; " >
				    <span id="hinter" style="margin-left: 15px;margin-top: 5px"></span>
				  </div>
					
  					<button type="submit" class="btn btn-default"  style="width:70%;text-align: center; font-size:18px; margin-left: 55px;background-color: orange;color: white">
  					注&nbsp;&nbsp;&nbsp;&nbsp;册</button>
			</form>
		</div>
	</div>
</div>
<script>
	function checkdata(){
		if(logform.logusername.value!=''&&logform.logpassword.value!=''){
			return true ;
		}
		else if(logform.logusername.value==''){
			document.getElementById('error').innerHTML="<font style='color: red;font-size: 18px' >请输入用户名！ </font>";	
			logform.logusername.focus();
			return false;
		}
		else if(logform.logpassword.value==''){
			document.getElementById('error').innerHTML="<font style='color: red;font-size: 18px' >请输入密码！ </font>";	
			logform.logpassword.focus();
			return false;
		}
	}
	
	
	function checksame(){
		debugger;
		if(regform.regpassword.value ==regform.regconfirmpwd.value){
				document.getElementById('hinter').innerHTML="";
				return true;
		}else{
		
				document.getElementById('hinter').innerHTML="<font style='color: red;font-size: 18px' >两次密码输入不一致，请重新输入! </font>";
				regform.regpassword.value="";
				regform.regconfirmpwd.value="";
				regform.regpassword.focus();
				return false;
		}
	}
	
</script>
</body>
</html>