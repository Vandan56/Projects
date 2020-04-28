package com.project.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

public class Deleteuser extends ActionSupport {

	private static final long serialVersionUID = -146601914103585418L;
	String email, msg;

	@Override
	public String execute() throws Exception {
		try {
			int isDeleted = deleteUserDetails(email);
			if (isDeleted > 0) {
				msg = "Record deleted successfully";
			} else {
				msg = "Some error";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public int deleteUserDetails(String email) throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "DELETE FROM employee WHERE Email=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, email);
			i = ps.executeUpdate();
			return i;
		} catch (Exception e) {
			e.printStackTrace();
			getConnection().rollback();
			return 0;
		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}
		}
	}

	public static Connection getConnection() throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/in0719a38i","IN0719A381","nCdRUqae2");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
}