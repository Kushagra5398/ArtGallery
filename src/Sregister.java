import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Sregister")
public class Sregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String mobile=request.getParameter("mobile");
		String address=request.getParameter("address");
		String membership=request.getParameter("membership");
		String email=request.getParameter("email");
		String pass=request.getParameter("pwd");
		String pass1=request.getParameter("pwd1");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","root");
			System.out.println(con);
			PreparedStatement ps=((java.sql.Connection) con).prepareStatement("insert into seller(name,mobile,email,password,address,membership) values(?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2,mobile);
			ps.setString(3, email);
			ps.setString(4, pass);
			ps.setString(5, address);
			ps.setString(6,membership);
			int i=ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("index.jsp");
			}
			else
			response.sendRedirect("login.jsp");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
}
