<%@page import="com.sun.org.apache.xml.internal.serializer.ToUnknownStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.fzzdh.diary.*"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.*"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.css" >
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/bootstrap.min.css" >
<link rel="stylesheet"  href="<%=request.getContextPath() %>/bootstrap-3.3.7/css/datetimepicker.css"/>
<script src="./bootstrap-3.3.7/js/jquery-2.1.0.js"> </script>
<script src="./bootstrap-3.3.7/js/bootstrap.js"> </script>
<script src="./bootstrap-3.3.7/js/bootstrap.min.js"> </script>
<script src="./bootstrap-3.3.7/js/bootstrap-datetimepicker.js"  type="text/javascript"></script>
<script src="./bootstrap-3.3.7/js/bootstrap-datetimepicker.zh-CN.js"  type="text/javascript"></script>
<title>所有日记</title>
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
<% 
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("utf-8");
	final int PAGE_SIZE = 10;
	int pageNo = 1;
	int userid = -1;
	userid = Integer.parseInt(session.getAttribute("userid").toString());
	String strPageNo = request.getParameter("pageNo");
	if(strPageNo!=null)
	{try{
		pageNo = Integer.parseInt(strPageNo);
	}catch(NumberFormatException e){
		e.printStackTrace();
		pageNo=1;
	}
	}
	if(pageNo<=0 ) pageNo = 1;
	//定义总的页面数，初始化为0,要从数据库查询出来设置
	int totalPages =0;
	int totalRecords =0;
	
	Connection conn = DatabaseUtil.getConnection();
	Statement stmt = DatabaseUtil.getStatement(conn);
	ResultSet rs = DatabaseUtil.excuteQuery(stmt, "select count(*) from diaryDetail where userid ="+userid);
	if(rs!=null){
	rs.next();
	totalRecords = rs.getInt(1);
	}
	//根据记录数算出总的页面数
	totalPages = (totalRecords+PAGE_SIZE-1)/PAGE_SIZE;
	//检查pageNO是否超出总数
	if(pageNo>totalPages)pageNo = totalPages;
	//定义一个全局的集合用来存放所有的查询结果
	ArrayList<Diary> diarys = new ArrayList<Diary>();
	int startPos = (pageNo-1) * PAGE_SIZE; 
	diarys = DatabaseUtil.ExcuteQueryAll(userid, startPos, PAGE_SIZE);
	

	
	
%>
<div style="margin-left: 35px">
	<div id="seeAll" style="margin-top: 15px">
		<span><strong><font size="4px">我的日记本</font></strong></span><br>
		<span><font style="font-style: italic;size:3px;color: gray "  >搜索、浏览、删除 我的日记</font></span>
	</div>
	
	<div id="search-block" style="margin-top: 15px;float:none ">
		<form name="searchform" action= "AllDiarys.jsp">
		 <input id="startTime" name="startTime" class="text" style="width: 240px; height: 45px;" placeholder="开始日期"/>
		 <input id="endTime" name="endTime" class="text" style="width: 240px; height: 45px; margin-left:35px;"placeholder="结束日期"/>
		<div id="btn-group" style="margin-left: 545px;margin-top: -43px">
		
				<button class="button" type="submit" >查询</button>
		</div>	 
		</form>	
				<div id="btn-group" style="margin-left: 675px;margin-top: -45px">
				<span>
					<a href="AllDiarys.jsp"><button class="button" >所有日记</button></a>
					<a href="WriteDiary.jsp"><button class="button" >写日记</button></a>	
				</span>
				</div>
	</div>
	
	<div class="tableWrap table-responsive" style="margin-top:30px ">
           <table class="table">
                   <thead>
                      <tr>
                         <th width="60%"style="font-size:22px;text-align: left;padding-left: 35px ">日记标题</th>
                         <th width="20%" style="font-size:22px;text-align: center;">编写时间</th>
                         <th width="20%" style="font-size:22px;text-align: center;" >操作</th>
                       </tr>
                    </thead>
              		<tbody>
              		<%
						String startTime = request.getParameter("startTime");
						String endTime = request.getParameter("endTime");
						
					%>
						<script>
						<%
						if(startTime!=null){
						%>	
							searchform.startTime.value ="<%=startTime %>";
						<%}
						if(endTime!=null){
						%>	
							searchform.endTime.value ="<%=endTime%>";
						<%}%>
						</script>
					<% 
						java.sql.Date starttime = null;
						java.sql.Date endtime = null;
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
						if(startTime!=null&&startTime!=""){
							try{
								 starttime = new java.sql.Date(sdf.parse(startTime).getTime());
							}catch(ParseException pe){
								pe.printStackTrace();	
							}
						}
						if(endTime!=null&&endTime!=""){
							try{
								 endtime = new java.sql.Date(sdf.parse(endTime).getTime());
							}catch(ParseException pe){
								pe.printStackTrace();	
							}
						}
						
					
						if(starttime == null && userid !=-1)
						{
							if(endtime == null){
								//默认查询所有的内容
								for(Diary d:diarys){
									out.println("<tr><td width='60%' >");
									out.println("<a style='text-decoration: none;' href='./diary/ShowContent.jsp?diaryid="+d.getDiaryid()+"'>"+d.getDiarytitle()+"</a>");
									out.println("</td><td width='20%' style='text-align: center;' >");
									out.println(d.getDiarywritetime());
									out.println("</td><td width='20%'style='text-align: center;'>");
									out.println("<span><a style='text-decoration: none;' href='EditDiary.jsp?diaryid="+d.getDiaryid()+"'>编辑</a><a style='text-decoration: none;margin-left: 10px'href='deleteOK.jsp?diaryid="+d.getDiaryid()+"'>删除</a></span>");
									out.println("</td></tr>");
								}
							}else{
								
								for(Diary d:diarys){
									if(d.getDiarywritetime().getTime()<=endtime.getTime()){
										out.println("<tr><td width='60%' >");
										out.println(d.getDiarytitle());
										out.println("</td><td width='20%' style='text-align: center;' >");
										out.println(d.getDiarywritetime());
										out.println("</td><td width='20%'style='text-align: center;'>");
										out.println("<span><a style='text-decoration: none' href='#'>编辑</a><a style='text-decoration: none;margin-left: 10px'href='deleteOK.jsp?diaryid="+d.getDiaryid()+"'>删除</a></span>");
										out.println("</td></tr>");
									}
								}
							}
						}else{
							//搜索时间大于startTime的日记
							if(endtime ==null && userid !=-1){
						
							for(Diary d:diarys){
								if(d.getDiarywritetime().getTime() >= starttime.getTime()){
									out.println("<tr><td width='60%' >");
									//out.println(d.getDiarytitle());
									out.println("<a style='text-decoration: none;' href='./diary/ShowContent.jsp?diaryid="+d.getDiaryid()+"'>"+d.getDiarytitle()+"</a>");
									out.println("</td><td width='20%' style='text-align: center;' >");
									out.println(d.getDiarywritetime());
									out.println("</td><td width='20%'style='text-align: center;'>");
									out.println("<span><a style='text-decoration: none' href='#'>编辑</a><a style='text-decoration: none;margin-left: 10px'href='deleteOK.jsp?diaryid="+d.getDiaryid()+"'>删除</a></span>");
									out.println("</td></tr>");
								}
							}
							}else{
								ArrayList<Diary> list = DatabaseUtil.ExcuteQueryAll(userid);
								for(Diary d:diarys){
									if(d.getDiarywritetime().getTime() >= starttime.getTime()&&d.getDiarywritetime().getTime() <= endtime.getTime()){
										out.println("<tr><td width='60%' >");
										//out.println(d.getDiarytitle());
										out.println("<a style='text-decoration: none;' href='./diary/ShowContent.jsp?diaryid="+d.getDiaryid()+"'>"+d.getDiarytitle()+"</a>");
										out.println("</td><td width='20%' style='text-align: center;' >");
										out.println(d.getDiarywritetime());
										out.println("</td><td width='20%'style='text-align: center;'>");
										out.println("<span><a style='text-decoration: none' href='#'>编辑</a><a style='text-decoration: none;margin-left: 10px'href='deleteOK.jsp?diaryid="+d.getDiaryid()+"'>删除</a></span>");
										out.println("</td></tr>");
									}
								}
	
							}
						}
	
					%>
              		</tbody>
            </table>
            <!-- 底部分页栏 -->
       <table border="0" cellpadding="3" cellspacing="0" width="30%" style="margin-top: 40px;margin-left: 70%">
    <tbody>
      <tr valign="top">
        <td><span >
          第<%=pageNo %>页,共<%=totalPages %>页 </span>
          
          <span ><span >
          <a href="AllDiarys.jsp?pageNo=1">第一页</a></span>
          	<a href="AllDiarys.jsp?pageNo=<%=pageNo-1%>">上一页</a>
          </span>
          
         <span>|</span>
          
          </span>
          <%
			for(int i=1;i<=totalPages;i++){
		  %>
				<a href="AllDiarys.jsp?pageNo=<%=i%>" style="text-decoration: none"><%=i %></a>&nbsp;
		  <%
			}
          %></span>
         <span >| <a href="AllDiarys.jsp?pageNo=<%=pageNo+1%>">下一页</a>
          |&nbsp; 
          <a href="AllDiarys.jsp?pageNo=<%=totalPages%>">最末页</a>  </span>  </td>
      </tr>
    </tbody>
  </table>
     </div>
</div>
<script>
	///$.noConflict();//有时候引用别人框架时，发生函数未定义无法识别之类的错误解决，最简单有效的办法是这个。出现这种错误最有可能的原因是
	//js文件重复，相互冲突了。有时候还会报$不是一个函数的情况，这是因为你前面加了noConflict函数后，把原来要引用的文件给过滤掉了，导致无法
	//识别
	$('#startTime').datetimepicker({
	format: "yyyy-mm-dd ",
	autoclose: true,
	todayBtn: true,
	language:'zh-CN',
	pickerPosition:'bottom',
	minView:'4',
	});
	$('#endTime').datetimepicker({
	format: "yyyy-mm-dd ",
	autoclose: true,
	todayBtn: true,
	language:'zh-CN',
	pickerPosition:'bottom',
	minView:'4',
	});
</script>
</body>
</html>