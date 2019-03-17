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
<%@ include  file="SessionCheck.jsp"%>
<title>菜单</title>
</head>
<body style="background-color:gray;background-image: url('./img/background.png');overflow:hidden">
<div class="panel-group" id="accordion" role="tablist"  style="margin-top:60px ">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a style="text-decoration:none " role="button" data-toggle="collapse" data-parent="#headingOne" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" >
          	用户信息
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
      		<h4><a style="text-decoration:none " class="collapsed" role="button"  href="#collapseOne" >
       		   我的昵称
        		</a></h4>
      		<h4><a style="text-decoration:none " class="collapsed" role="button" href="#collapseOne" >
       		  我的签名
        		</a></h4>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a style="text-decoration:none " class="collapsed" role="button" data-toggle="collapse" data-parent="#headingTwo" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
       		   我的日记本
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
	      		<h4><a style="text-decoration:none " class="collapsed" role="button"   href="WriteDiary.jsp" target="detail_Frame" >
	       		   记录日记
	        		</a></h4>
	      		<h4><a style="text-decoration:none " class="collapsed" role="button"   href="AllDiarys.jsp" target="detail_Frame" >
	       		  所有日记
	        		</a></h4>
	      		<h4><a style="text-decoration:none " class="collapsed" role="button"  href="DiaryTags.jsp" target="detail_Frame" >
	       		  日记标签
	        		</a></h4>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a style="text-decoration:none " class="collapsed" role="button" data-toggle="collapse" data-parent="#headingThree" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          	安全设置
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
      			<h4><a style="text-decoration:none " class="collapsed" role="button"  href="./user/ModifyPassword.jsp" target="detail_Frame" >
	       		  修改密码
	        	</a></h4>
      </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFour">
      <h4 class="panel-title">
        <a style="text-decoration:none " class="collapsed" role="button" href="<%=request.getContextPath() %>/logInOut/Logout.jsp" target="_top"aria-expanded="false">
          	退出登录
        </a>
      </h4>
    </div>
    
  </div>
  </div>
  
</body>
</html>