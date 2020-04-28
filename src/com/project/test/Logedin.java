package com.project.test;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class Logedin extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = -3353507406394033775L;
	private String email;
	private String password;
	private SessionMap<String, Object> sessionMap;

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return this.email;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return this.password;
	}

	public void setSession(Map<String, Object> map) {
		this.sessionMap = (SessionMap) map;
	}

	public String execute() throws SQLException, Exception {

		if (email != null) {
			boolean check = login(email, password);

			if (check == true) {
				String msg = "Logged in Successfully my boy!";
				System.out.println(msg);

			} else {
				String msg = "Please Enter Correct Credentials";
				System.out.println(msg);
				return "failure";

			}

		}
		sessionMap.put("login", "true");
		sessionMap.put("email", email);

		return "success";

	}

	public boolean login(String Email, String Password) throws SQLException, Exception {
		boolean status = false;
		try {
			String sqls = "Select * from employee WHERE email=? and password=?";
			PreparedStatement ps = DBC.getConnection().prepareStatement(sqls);
			ps.setString(1, Email);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			status = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();

		} catch (Exception b) {
			b.printStackTrace();

		}
		return status;

	}
	
	
	public String logout(){  
	    if(sessionMap!=null){  
	        sessionMap.invalidate();  
	    }  
	    return "logout";  
	}  
	
	
}
