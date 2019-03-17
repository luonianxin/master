<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
<head>
<title>兴鑫日记</title>
<script src="./bootstrap-3.3.7/js/jquery-2.1.0.js"> </script>
<script src="./bootstrap-3.3.7/js/bootstrap.js"> </script>
<%@ include  file="SessionCheck.jsp"%>
	</head>
	<!--注意不要有body-->
	<!--<body>-->

		<frame scrolling="yes" name="wholePage_frame">
			<frameset rows="8%,100%" style="background-image: url('./img/background.png')">
				<frame name="topMesg" src="headMesg.jsp" noresize frameborder="0" scrolling="no">
					<frameset  cols="15%,100%" style="background-image: url('./img/background.png')">
							<frame name="menuBar_frame" src="menuBar.jsp" noresize frameborder="0" scrolling="no"></frame>
							<frame name="detail_Frame" src="AllDiarys.jsp" noresize frameborder="0" ></frame>
					</frameset>
				</frame>
			</frameset>
		</frame>
	
	<!--</body>-->
</html>
