<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.json.simple.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>서울 지하상가 정복하기</title>
	<meta name=viewport content="width=device-width, initial-scale=1, user-scalable=0">
	<meta charset="UTF-8">
	<style type="text/css">
*{
	text-decoration: none;
}
body{
	margin: 0px;
	background-color: rgb(217,238,255);
}
.section {
	float: left;
	width: 100%;
} 
#header-area{
	text-align: center;
	font-weight: bold;
	padding: 0px 0px;
	background-color: rgb(89,181,255);
	margin: 0px;
	line-height: 190%;
}
#header-area h3 {
	display: inline-block;
	color:white;
	margin: 0px 30px 0px 0px;
}
.List{
	text-align: center;
	font-size: 1.5em;
	font-style: weight 5px;
	margin: 0px 0px 0px 0px;
}
.rectangle{
	float: center;
	height:100%;
	width: 90%;
	border: 5px solid rgb(0,125,227);
	padding: 20px 0px;
	border-radius: 20px;
	background-color: rgb(222,235,247);
	margin: 10px auto;
	box-sizing: border-box;
}
.author {
	float: left;
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
}
.rectangle .name {
	width: 70%
    margin-left: 10px;
    text-align: right;
    padding: 0px 10px 0px 0px;
}
.text1{
	font-size: 1em;
	color: black;
	font-weight: bold;
}
.text2{
	font-size: 0.8em;
	color: black;
	font-weight: bold;
}
.bar{
  background-color: rgb(89,181,255);
  width : 1.6em;
  height: 1.6em;
  float: left;
  margin: 0.1em 0.1em;
  position: relative;
  background-repeat: no-repeat;
  background-size: 1.6em;
}
.image6{
	height: 7em;
	background-repeat: no-repeat;
	position: relative;
	background-size: 100%;
	margin: 60px 0px 0px 0px;
}
.image8{
	height: 7em;
	background-repeat: no-repeat;
	position: relative;
	background-size: 100%;
	margin: 5px 0px;
}
.form {
	float: left;
	width: 100%;
	padding: 10px 16px ;
	box-sizing: border-box;
	background-position: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
.form input[type=text] {
	float: left;
	width: 75%;
	margin-bottom: 10px;
	padding: 10px;
	box-sizing: border-box;
	border: 1px solid #DDD;

}
.form input[type=submit] {
	float: right;
	width: 20%;
	margin: 0px 0px 10px 0px;
	padding: 10px;
	box-sizing: border-box;
	text-align: center;
	color: white;
	background-color: rgb(89,181,255);
	border: none;
	border-radius: 20px;
}
	</style>	
</head>
<body>
<div id="header-area" >
		 <a href = "main1.html">
   			 <div class="bar" style = "background-image:url('image/6.png')"></div>
	    </a>
		<h3>&nbsp;서울 지하상가 정복하기&nbsp;</h3>
	</div>
	<div id="contents-area" class="section">
	<div class="form">
		<form action="searchgo.jsp" method="post">
		<input id="search" type="text" name="name" placeholder="검색할 가게명을 입력하세요.">
		<input type="submit" value="검색">
		</form>
		<div class = "image6" style = "background-image:url('image/gofull.jpg')"> 
	    </div>
		<div class = "image8" style = "background-image:url('image/go11.jpg')"> 
	    </div>
		<div class = "image8" style = "background-image:url('image/go22.jpg')"> 
	   	</div>
		<div class = "image8" style = "background-image:url('image/go33.jpg')"> 
	    </div>
		<div class="section">
<% 
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mall", "root", "1111");
	Statement st = conn.createStatement();
	
	String sql = "SELECT cmd,area,name FROM admingo WHERE name = '" + name + "'";
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()) {
		String section = rs.getString("cmd");;
		String area = rs.getString("area");
		String nam = rs.getString("name");
		
		out.println("구역 : "+section+"     번호 : "+area+"      가게이름 : "+nam);
	}

	rs.close();
	st.close();
	conn.close();
%>
		</div>
		
</body>
</html>