<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("uid");
	String pass = request.getParameter("upass");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mall", "root", "1111");
	Statement st = conn.createStatement();
	
	String sql = "SELECT id, password FROM admin WHERE id = '" + id + "'";
	ResultSet rs = st.executeQuery(sql);
	if (!rs.next()) {
		out.print("NA");
	}
	else {
		String ps = rs.getString("password");
		if (!ps.equals(pass)) {
			out.print("PS");
		}
		else {
			// session handling for login 
			// NOTE THAT session check can be performed by calling session.jsp
			if (session.getAttribute("id") == null) {
				session.setAttribute("id", id);
				session.setMaxInactiveInterval(30 * 24 * 60 * 60);
			}

			out.print("OK");
		}
	}
	
	rs.close();
	st.close();
	conn.close();
%>