

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/UploadArticle")
@MultipartConfig(fileSizeThreshold=1024*1024*2 ,
								maxFileSize=1024*1024*10,
								maxRequestSize=1024*1024*50)
	public class UploadArticle extends HttpServlet {
	private ServletRequest session;
	String sid=session.getAttribute("sid").toString();
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String savepath="D:/Program Files/eclipse-workspace/GAG/WebContent/image/";
		File fileSaveDir=new File(savepath);
		
		String title=request.getParameter("Title");
		String artist=request.getParameter("Artist");
		String mrp=request.getParameter("Mrp");
		String sp=request.getParameter("SellinpPrice");
		String quan=request.getParameter("Quantity");
		String location=request.getParameter("Location");
		String disc=request.getParameter("Description");
		String painting_style=request.getParameter("painting_style");
		String exhibition=request.getParameter("exhibition");
		String exhibition_date=request.getParameter("exhibition_date");
		
		Part part=request.getPart("Image");
		String fileName=extractFileName(part);
		part.write(savepath + File.separator +fileName);
		
		Connection con=dbConnection.getConnection();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("insert into articles(title, artist, description, mrp, sellingprice, location, quantity, file,paintingStyle, exhibition, exhibitionDate,sid) values(?,?,?,?,?,?,?,?,?,?,?,?)");
		
		String filepath= savepath+ fileName;
		ps.setString(1, title);
		ps.setString(2, artist);
		ps.setString(3, disc);
		ps.setString(4, mrp);
		ps.setString(5, sp);
		ps.setString(6, location);
		ps.setString(7, quan);
		ps.setString(8, filepath);
		ps.setString(9, painting_style);
		ps.setString(10, exhibition);
		ps.setString(11, exhibition_date);
		ps.setString(12, sid);
		 int i=ps.executeUpdate();
		 System.out.println(i);
		 if(i>0)
			
			{
				response.sendRedirect("seller.jsp");
			}
			else
			{
				response.sendRedirect("AddArticles.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

private String extractFileName(Part part)
{
	String contentDisp= part.getHeader("content-disposition");
	String[] items= contentDisp.split(";");
	for(String s : items)
	{
		if(s.trim().startsWith("filename"))
		{
			return s.substring(s.indexOf("=") + 2, s.length() -1);
		}
	}
	return "";
}
}