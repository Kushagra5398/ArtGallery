package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class exhibition {		
		public String[] description(String n)throws Exception
		{
			String [] description=new String[13];
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","root");
					Statement st=con.createStatement();
					ResultSet resultSet=st.executeQuery("SELECT * FROM articles where exhibition='yes' AND aid = "+n);
					while(resultSet.next())
					{
						description[0]=resultSet.getString(1);
						description[1]=resultSet.getString(2);
						description[2]=resultSet.getString(3);
						description[3]=resultSet.getString(4);
						description[4]=resultSet.getString(5);
						description[5]=resultSet.getString(6);
						description[6]=resultSet.getString(7);
						description[7]=resultSet.getString(8);
						description[8]=resultSet.getString(9).substring(57);
						description[9]=resultSet.getString(10);
						description[10]=resultSet.getString(11);
						description[11]=resultSet.getString(12);
						description[12]=resultSet.getString(13);
					}
			return description;		
		}
		public int count()throws Exception
		{
			int num = 0;
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","");
					Statement st=con.createStatement();
					ResultSet resultSet=st.executeQuery("SELECT COUNT(*) FROM articles where exhibition='yes' ");
					while(resultSet.next())
					{
						num=resultSet.getInt(1);
					}
			return num;		
		}
		public String[] array()throws Exception
		{
			String num[] = new String[15];
			int i=0;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","");
			Statement st=con.createStatement();
			ResultSet resultSet=st.executeQuery("SELECT * FROM articles where exhibition='yes' ");
			while(resultSet.next())
					{
						num[i++]=resultSet.getString(1);
					}
			return num;		
		}
}
