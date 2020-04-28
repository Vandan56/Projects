package com.project.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.opensymphony.xwork2.ActionSupport;

public class Admin extends ActionSupport {

	private static final long serialVersionUID = 6329394260276112660L;
	ResultSet rs = null;
	Welcome bean = null;
	List<Welcome> beanList = null;
	private boolean noData = false;

	@Override
	public String execute() throws Exception {
		try {
			beanList = new ArrayList<Welcome>();
			rs = report();
			int i = 0;
			if (rs != null) {
				while (rs.next()) {
					i++;
					bean = new Welcome();
					bean.setFname(rs.getString("fname"));
					bean.setLname(rs.getString("lname"));
					bean.setDate(rs.getString("date"));
					bean.setNumber(rs.getString("number"));
					bean.setQua(rs.getString("qua"));
					bean.setCity(rs.getString("city"));
					bean.setCountry(rs.getString("country"));
					bean.setEmail(rs.getString("email"));
					
					beanList.add(bean);
				}
			}
			if (i == 0) {
				noData = false;
			} else {
				noData = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	public ResultSet report() throws SQLException, Exception {
		ResultSet rs = null;
		try {
			String sql = "SELECT * FROM employee";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
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

	public boolean isNoData() {
		return noData;
	}

	public void setNoData(boolean noData) {
		this.noData = noData;
	}

	public List<Welcome> getBeanList() {
		return beanList;
	}

	public void setBeanList(List<Welcome> beanList) {
		this.beanList = beanList;
	}
}