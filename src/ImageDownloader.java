

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ImageDownloader")
public class ImageDownloader extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
@Override
protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	Connection con=dbConnection.getConnection();
	try {
		PreparedStatement ps=con.prepareStatement("SELECT file FROM articles");
		ResultSet rs=ps.executeQuery(); 
		if(rs.next())
		{
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
		

}
