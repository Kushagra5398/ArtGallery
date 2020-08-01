package com;
import java.sql.*;
public class Index 
{
	public String image(int n)
	{	String img1 = null;
		String img2=null;
		try
		{
			    Connection con=dbConnection.getConnection();
			    Statement st=con.createStatement();
				ResultSet resultSet=st.executeQuery("SELECT * FROM articles where aid = "+n);
				while(resultSet.next())
				{
				img1=resultSet.getString(9);
				}
				img2=img1.substring(57);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return img2;
	}
	
	public String mrp(int n)
	{
		String mrp = null;
		try
		{
				Connection con=dbConnection.getConnection();
				Statement st=con.createStatement();
				ResultSet resultSet=st.executeQuery("SELECT * FROM articles where aid = "+n);
				while(resultSet.next())
				{
				mrp=resultSet.getString(5);
				}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return mrp;		
	}
	
	public String sellingPrice(int n)
	{
		String sp = null;
		try
		{
				Connection con=dbConnection.getConnection();
				Statement st=con.createStatement();
				ResultSet resultSet=st.executeQuery("SELECT * FROM articles where aid = "+n);
				while(resultSet.next())
				{
				sp=resultSet.getString(6);
				}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return sp;		
	}
	public String ProductName(int n)
	{
		String pn = null;
		try
		{
				Connection con=dbConnection.getConnection();
				Statement st=con.createStatement();
				ResultSet resultSet=st.executeQuery("SELECT * FROM articles where aid = "+n);
				while(resultSet.next())
				{
				pn=resultSet.getString(2);
				}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return pn;		
	}
	public int StartingIndex()
	{
		int si = 0;
		try
		{
				Connection con=dbConnection.getConnection();
				Statement st=con.createStatement();
				ResultSet resultSet=st.executeQuery("SELECT * FROM articles");
				while(resultSet.next())
				{
				si=resultSet.getInt(1);
				break;
				}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return si;		
	}
	/*
public String[] paintingCat1()throws Exception
{			
			String cat1[]=new String[4];
			int i=0;
			Connection con=dbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("SELECT DISTINCT ? FROM painting");
			ps.setString(1, "cat1");
			ResultSet resultSet=ps.executeQuery();
			while(resultSet.next())
			{
			cat1[i++]=resultSet.getString(2);
			System.out.println(cat1[i-1]);
			}
	return cat1;		
}
public String[] paintingCat2(String cat1)throws Exception
{			
			String cat2[]=new String[10];
			int i=0;
			Connection con=dbConnection.getConnection();
			Statement st=con.createStatement();
			ResultSet resultSet=st.executeQuery("SELECT DISTINCT * FROM painting where cat1="+cat1);
			while(resultSet.next())
			{
			cat2[i++]=resultSet.getString(3);
			}
	return cat2;		
}*/
}
