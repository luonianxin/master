<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.css" >
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.min.css" >
<script src="./bootstrap-3.3.7/js/jquery-2.1.0.js"> </script>
<script src="./bootstrap-3.3.7/js/bootstrap.js"> </script>

<title>日记标签</title>
<%@ include  file="SessionCheck.jsp"%>
<style type="text/css">
body {
	overflow: scroll;
	overflow-x: hidden;
}
input{
    font-size: 20px;
    
}
input.text{line-height: 35px;vertical-align: middle;font-style: italic;text-align: center;}

input:-ms-input-placeholder{
    color: GRAY;opacity:1;
}
button{
	width:120px;
	height:45px;
	line-height: 35px;
	font-size: 20px; 
	color: white;
	text-decoration: none;
	background-color:orange;
	border: none;
	margin-left: 5px;
}
</style>
</head>
<body style="margin-right:35px">
<div style="margin-left: 35px">
	<div id="seeAll" style="margin-top: 15px">
		<span><strong><font size="4px">日记标签</font></strong></span><br>
		<span><font style="font-style: italic;size:15px;color: gray " >所有日记的标签, 点击标签可以查看相关日记内容</font></span>
	</div>
	
	<div class="tableWrap table-responsive" style="margin-top:30px ">
           <table class="table">
                   <thead>
                      <tr>
						<th>建议给日记写表签</th>                        
                       </tr>
                    </thead>
              		<tbody>
              		</tbody>
            </table>
     </div>
</div>
</body>
</html>