package com.project.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class Updateprofile extends ActionSupport {


	private static final long serialVersionUID = 7171749483406665692L;
	private String fname = "", lname = "", date = "", number = "", qua = "",city = "",country = "";
	private String msg = "";
	ResultSet rs = null;

	String submitType;
	Welcome user = new Welcome();

	public Welcome getUser() {
		return user;
	}

	public void setUser(Welcome user) {
		this.user = user;
	}

	@Override
	public String execute() throws Exception {
		HttpSession session=ServletActionContext.getRequest().getSession(false); 

		if(session==null || session.getAttribute("login")==null){  
			return "error";

		}  
		else{  
			String email = (String) session.getAttribute("email");
			int i = updateUserDetails(fname, lname, date, number, qua, city, country, email);
			if (i > 0) {
				msg = "Record Updated Successfuly";
			} else {
				msg = "error";
			}
		} return "success";

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


	public int updateUserDetails(String fname, String lname, String date, String number, String qua, String city, String country, String email)
			throws SQLException, Exception {
		getConnection().setAutoCommit(false);
		int i = 0;
		try {
			String sql = "UPDATE employee SET Fname=?,Lname=?,Date=?,Number=?,Qua=?,City=?,Country=?,Email=? WHERE Email=?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			System.out.println(fname);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, date);
			ps.setString(4, number);
			ps.setString(5, qua);
			ps.setString(6, city);
			ps.setString(7, country);
			ps.setString(8, email);
			ps.setString(9, email);
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

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getQua() {
		return qua;
	}

	public void setQua(String qua) {
		this.qua = qua;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getSubmitType() {
		return submitType;
	}

	public void setSubmitType(String submitType) {
		this.submitType = submitType;
	}

}

