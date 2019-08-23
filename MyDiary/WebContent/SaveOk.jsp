<%@page import="com.fzzdh.diary.DatabaseUtil"%>
<%@page import="java.sql.Date"%>
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
<title>Insert title here</title>
<%@ include  file="SessionCheck.jsp"%>
</head>
<body>
<% 
	request.setCharacterEncoding("utf-8");
	String diarytitle = null;
	String diarycontent = null;
	Timestamp tsdate = null;
	Object id = session.getAttribute("userid");
	int userid = -1;
	diarytitle= request.getParameter("title");
	diarycontent = request.getParameter("content");
	userid = Integer.parseInt(id.toString());
	try{
		java.util.Date date=new java.util.Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	
		String strDate = sdf.format(date);
		date = sdf.parse(strDate);
		tsdate = new Timestamp(date.getTime());
	}catch(ParseException e){
		e.printStackTrace();
	}
		    
%>
<%

	if(diarytitle!=null&&diarycontent!=null)
	{
		Connection conn = DatabaseUtil.getConnection();
		String sql="insert into diaryDetail(diaryid,userid,diarytitle,diarytag,diarycontent,diarywritetime) values(null,?,?,?,?,?)";
		PreparedStatement pstmt = DatabaseUtil.getPreStatement(conn, sql);
		pstmt.setInt(1,userid);
		//pstmt.setString(2,diarytitle);
		pstmt.setString(2, diarytitle);
		pstmt.setString(3,"");
		pstmt.setString(4,diarycontent);
		pstmt.setTimestamp(5,tsdate);
		int i=pstmt.executeUpdate();
		DatabaseUtil.close(pstmt);
		DatabaseUtil.close(conn);
	}
%>
<%
		response.sendRedirect("AllDiarys.jsp");
%>
</body>
</html>