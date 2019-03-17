<%
 	String path=request.getContextPath();
	String basePath= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   %>

<% 
	
	String userlogined = (String)session.getAttribute("userlogined");
	if(userlogined==null ||!userlogined.trim().equals("true")){
		response.sendRedirect( basePath+"/logInOut/Login.jsp");
		return ;
	}
%>