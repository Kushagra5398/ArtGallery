package com;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/slogin")
public class slogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext session;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
 		String mobile=request.getParameter("mobile");
 		String pass=request.getParameter("pwd");
 		int id=0;
 		String pwd1="";
 		try
 		{
 			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","root");
			Statement st=con.createStatement();
			ResultSet resultSet=st.executeQuery("SELECT * FROM seller where mobile = "+mobile);
			while(resultSet.next())
			{
			pwd1=resultSet.getString(6);
			id=resultSet.getInt(1);
			}
 			if(pass.equals(pwd1))
 			{				
 			//	session.setAttribute("cid",id);
 				response.sendRedirect("seller.jsp?sid="+id);
 			}
 			else
 				response.sendRedirect("slogin.jsp");
 		}
 		catch(Exception e)
 		{
 			System.out.println(e.getMessage());
 		}
	}
	
  public String[] getData(String n)
   { 
	   String data[]=new String[5];
	   try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","");
			Statement st=con.createStatement();
			ResultSet resultSet=st.executeQuery("SELECT * FROM seller where sid = "+n);
			while(resultSet.next())
			{
			data[0]=resultSet.getString(2);
			data[1]=resultSet.getString(3);
			data[2]=resultSet.getString(4);
			data[3]=resultSet.getString(5);
			data[4]=resultSet.getString(7);
			}		  
		}
	   catch(Exception e)
	   {
		   System.out.println(e);
	   }
	   return data;
}
}
