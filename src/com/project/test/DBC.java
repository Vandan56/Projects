package com.project.test;

import java.sql.*;

public class DBC {
 
	private static Connection conn;
	
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/in0719a38i","IN0719A381","nCdRUqae2");
		}
		catch(Exception E){
			E.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		return conn;
	}
}
