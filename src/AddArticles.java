

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@MultipartConfig
@WebServlet("/AddArticles")
public class AddArticles extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	String title=request.getParameter("Title");
	String artist=request.getParameter("Artist");
	String mrp=request.getParameter("Mrp");
	String sp=request.getParameter("SellinpPrice");
	String quan=request.getParameter("Quantity");
	String location=request.getParameter("Location");
	String disc=request.getParameter("Description");
	Part part=request.getPart("Image");
	System.out.println(part.getName());
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","root");
		PreparedStatement ps=con.prepareStatement("insert into articles(title, artist, descpription, mrp, sellingprice, location, quantity, file) values(?,?,?,?,?,?,?,?)");
		InputStream is=part.getInputStream();
		ps.setString(1, title);
		ps.setString(2, artist);
		ps.setString(3, disc);
		ps.setString(4, mrp);
		ps.setString(5, sp);
		ps.setString(6, location);
		ps.setString(7, quan);
		ps.setBlob(8, is);
		int i=ps.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.sendRedirect("AddArticles.jsp");
		}
	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	}
}
