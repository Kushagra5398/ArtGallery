package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class assets 
{
	public String[] getAssets()throws Exception
	{
		String assets[]=new String[10];
		Connection con=dbConnection.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from assets where asid=1");
		ResultSet resultSet=ps.executeQuery();
		while(resultSet.next())
		{
			assets[0]=resultSet.getString(1);
			assets[1]=resultSet.getString(2);
			assets[2]=resultSet.getString(3);
			assets[3]=resultSet.getString(4);
			assets[4]=resultSet.getString(5);
			assets[5]=resultSet.getString(6);
		}
		return assets;
	}
}
