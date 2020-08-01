<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<%
String aid=request.getParameter("aid");
out.print(aid);
String sid=session.getAttribute("sid").toString();
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","");
	Statement st=con.createStatement();
	int i=st.executeUpdate("DELETE FROM articles WHERE aid="+aid);
	response.sendRedirect("seller.jsp?sid="+sid);
}
catch(Exception e)
{
out.print(e);
}
%>