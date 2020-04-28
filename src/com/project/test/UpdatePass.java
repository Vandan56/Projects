package com.project.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UpdatePass extends ActionSupport {
	
	
	private static final long serialVersionUID = 1L;

	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/in0719a38i","IN0719A381","nCdRUqae2");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public int updatePasss(String email, String password) throws SQLException, Exception
	{
		int i = 0;
		try {
			String sqls = "Update employee set Password = ? where Email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sqls);
			ps.setString(1, password);
			ps.setString(2, email);

			i = ps.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();	
		}
		catch(Exception f)
		{
			f.printStackTrace();	 
		}
		return i;
	}

	private String password;

	public void setPassword(String password)
	{
		this.password = password;
	}

	public String getPassword()
	{
		return password;
	}

	public String execute() throws SQLException, Exception 
	{
		HttpSession session=ServletActionContext.getRequest().getSession(false); 

		if(session==null || session.getAttribute("mail")==null){  
			return "failure";

		}  

		else 
		{
			String Email = (String) session.getAttribute("email");


			UpdatePass bao = new UpdatePass();
			int insert = bao.updatePasss(Email, password);
			String msgs;
			if (insert > 0) 
			{
				msgs = "Update Successfull";
				addActionMessage("Your Password has been updated Successfully");
			} 
			else
			{
				msgs = "Some error";
			}
		} 
		return "success";

	}

	

	
}
