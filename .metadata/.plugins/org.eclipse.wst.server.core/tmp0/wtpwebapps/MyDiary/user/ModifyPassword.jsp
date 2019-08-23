<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>

 
<%@ include  file="../SessionCheck.jsp"%>

</head>
<body>
	<form name="form" action =  "<%=basePath %>/user/ModifyOK.jsp" method="post" onsubmit="return checksame()">
	<div class="panel-theme">
	<font style="font-size: 20px">输入新密码:</font> <br>
		<div style="margin-top: 15px">
				<input id="newPWD"name="newPWD" type="password" style="width: 200px;
					 height: 40px" ></input><br>
		</div>
	</div>
<div class="panel-theme" style="margin-top: 10px">
								
	<font style="font-size: 20px">确认新密码:</font> <br>
		<div style="margin-top: 15px">
		<input id="confirmnewPWD"name="confirmnewPWD" type="password" style="width: 200px; 
					height: 40px" ></input>		
</div>
		</div>
	</div>
			<br><span id="hinter"></span><br>	
		<div style="margin-top: 10px;">
			
				<button type="submit"class="button" >确认修改</button>
		</div>
		
		</form>
<script type="text/javascript">
function checksame(){
	debugger;
	if(form.newPWD.value == form.confirmnewPWD.value &&form.newPWD.value !=''){
			document.getElementById('hinter').innerHTML="";
			return true;
	}else{
	
			document.getElementById('hinter').innerHTML="<font style='color: red;font-size: 18px' >两次密码输入不一致，请重新输入! </font>";
			form.newPWD.value="";
			form.confirmnewPWD.value="";
			form.newPWD.focus();
			return false;
	}
}
</script>
</body>
</html>