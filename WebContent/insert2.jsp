<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	request.setCharacterEncoding("UTF-8");
	
	String cmd = request.getParameter("cmd");
	String area = request.getParameter("area");
	String name = request.getParameter("name");

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mall", "root", "1111");
	Statement st = conn.createStatement();
	
	String sql = "SELECT name FROM adminifc WHERE name = '"+name+"'";
	ResultSet rs = st.executeQuery(sql);
	if (rs.next()) {
	      out.print("EX");
	   }
	else {
		sql = "INSERT INTO adminifc(cmd,area,name) VALUES('" + cmd + "', '" + area + "', '" + name + "')";
	      st.executeUpdate(sql);
	      out.print("OK");
	   }
	   
	rs.close();
	st.close();
	conn.close();
%>