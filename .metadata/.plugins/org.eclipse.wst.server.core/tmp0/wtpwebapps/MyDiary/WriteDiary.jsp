<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-3.3.7/css/bootstrap.min.css">
<script src="./bootstrap-3.3.7/js/jquery-2.1.0.js">
	
</script>
<script src="./bootstrap-3.3.7/js/bootstrap.js">
	
</script>
<script src="./ueditor/ueditor.config.js">
	
</script>
<script src="./ueditor/ueditor.all.js">
	
</script>

<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*"%>
<%
	SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd  HH:mm");
	SimpleDateFormat fmt2 = new SimpleDateFormat("yyyy年-MM月-dd号日记");
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("utf-8");
%>
<title>日记主题:</title>
<%@ include  file="SessionCheck.jsp"%>
<style type="text/css">
body {
	overflow: scroll;
	overflow-x: hidden;
}
input{
    
    font-size: 20px;
    padding-left:15px;
}
input.text{line-height: 35px;vertical-align: middle;}
button{
	width:120px;
	height:45px;
	line-height: 35px;
	font-size: 20px; 
	color: white;
	text-decoration: none;
	background-color:orange;
	border: none;
}
input:-ms-input-placeholder{
    color: GRAY;opacity:1;
}

</style>
</head>
<body
	style="background-image: url('./img/write-background.jpg'); background-color: BlanchedAlmond">

	<div style="margin-left: 35px; margin-top: 25px">
		<div id="type">
			<font style="font-family: sans-serif; font-size: 35px">新增日记</font> <font
				style="font-family: sans-serif; font-size: 15px; color: gray; margin-left: 8px"><%=fmt.format(new Date())%></font>
		</div>

		<!-- 编辑器 -->
		<form name="editform"action="SaveOk.jsp" method="get" onsubmit=" return checkData()">
		<div style="margin-top: 25px; margin-right: 45px">
			<div id="content" name="content"style="width: 100%; height: 400px"></div>
		</div>
		<!-- 编辑器 -->

		
			<div class="panel-group" id="diaryTheme" role="tablist"
				aria-multiselectable="true" style="margin-top: 60px">
				<div class="panel panel-default">
					<div class="panel-heading" role="button" id="headingOne">
						<font style="font-size: 25px;color: orange">
							<span><strong>|</strong>
							<a style="text-decoration: none;color: orange" role="button"
								data-toggle="collapse" data-parent="#headingOne"
								href="#diarySelects" aria-expanded="true"
								aria-controls="diarySelects" >日记选项 (可选)</a>
							</span>
						</font>	
						
						<div id="diarySelects" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne" style="margin-top: 30px;margin-bottom: 40px;margin-left: 35px;margin-right:25px ">
							<div class="panel-theme">
								
								 <font style="font-size: 20px">日记标题:</font> <br>
								 <div style="margin-top: 15px">
								 <input name="title" class="text" style="width: 500px; height: 40px" value="<%= fmt2.format(new Date()) %>"></input>
								</div>
								
							</div>
						</div>
					</div>

				</div>
			</div>

		<div style="margin-top: 10px;">
			
				<button type="submit"class="button" >保存日记</button>
		</div>
		</form>
		<div style="height:100px "></div>
	</div>


	<script type="text/javascript">
		//实例化编辑器
		var editor = UE.getEditor('content');
		function checkData(){
			if(editform.content==''){
				return false;
			}else{
				return true;
			}
		}
	</script>

</body>
</html>