<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mall", "root", "1111");
	Statement st = conn.createStatement();
	
	String sql = "SELECT * FROM admingo WHERE name = '" + name + "'";
	
	sql = "DELETE FROM admingo WHERE name = '" + name + "'";
	st.executeUpdate(sql);
	out.print("OK");
	
	st.close();
	conn.close();
%>