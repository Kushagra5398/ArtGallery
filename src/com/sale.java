package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
@WebServlet("/sale")
public class sale extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			response.setContentType("text/html");			
			String address=request.getParameter("address");
			String shipping=request.getParameter("shipping");
			String payments=request.getParameter("payments");
			String aid=request.getParameter("aid");
			String cid=request.getParameter("cid");
			String quan=request.getParameter("quantity");
			System.out.println(aid + cid +  quan);
			Connection con=dbConnection.getConnection();
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("insert into sale( aid, cid, date,quantity, shipping, payments) values(?,?,?,?,?,?)");
			
				ps.setString(1,aid);
				ps.setString(2,cid);
				ps.setString(3,getdate());
				ps.setString(4,quan);
				ps.setString(5, shipping);
				ps.setString(6, payments);
				int i=ps.executeUpdate();
				//System.out.println(i);
				if(cid!=null)
				{
				String add=null;
				Statement st=con.createStatement();
				ResultSet resultSet=st.executeQuery("select * from customer where cid="+cid);
				while(resultSet.next())
				{
					add=resultSet.getString(6);
					response.sendRedirect("index.jsp?result='1");				}
				}
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		String getdate()
		{
			Calendar cal=Calendar.getInstance();
			java.sql.Date date=new java.sql.Date(cal.getTime().getTime());
			String Date=date.toString();
			return Date;
		}
}
