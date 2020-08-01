import java.sql.*;

public class getImage 
{
	public String image(int n)
	{	String img1 = null;
		try
		{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","root");
				PreparedStatement ps=con.prepareStatement("SELECT * FROM articles where aid=?");
				ps.setInt(1, n);
				ResultSet resultSet=ps.executeQuery();
				resultSet.next();
				img1=resultSet.getString(9);
				
				System.out.println(img1);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return img1;
	}
}
