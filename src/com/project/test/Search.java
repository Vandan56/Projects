package com.project.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

public class Search extends ActionSupport {

	
	private static final long serialVersionUID = -6750168050684601868L;
	private String Search;
	
	ResultSet rs = null;
	ResultSet rs2 = null;
	Welcome bean = null;
	Welcome beans = null;
	ArrayList<Welcome> beanList = null;
	ArrayList<Welcome> beanl = null;
	private boolean noData = false;
	private String email;
	
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public String getEmail()
	{
		return email;
	}
	
	public String search() throws Exception
	{
//		System.out.println(Search);
		beanList = new ArrayList<Welcome>();
		if(Search == "") {
			addActionMessage("Search Field is Mandatory");
			return "error";
		}
		else {
			
    	rs = userList(Search);
//    	System.out.println(Search);
    	int i = 0;
    	
    	while (rs.next()) {
    	i++;
    	bean = new Welcome();
    	bean.setFname(rs.getString("Fname"));
    	bean.setLname(rs.getString("Lname"));
    	bean.setEmail(rs.getString("Email"));
    	bean.setCity(rs.getString("City"));
    	bean.setCountry(rs.getString("Country"));
    	beanList.add(bean);
    	}
    	
    	
    	
    	if (i == 0) {
    	noData = false;
    	
    	
    	
    	} else {
    	noData = true;
    	}
		}
    	
        return "success";  
	}
	
	public ResultSet userList(String Search) throws SQLException, Exception {
		ResultSet rs = null;

		try {
			System.out.println(Search);
			String sql = "SELECT * FROM employee where Fname Like ? or Lname Like ? or City Like ? or Country Like ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, "%" + Search + "%");
			ps.setString(2, "%" + Search + "%");
			ps.setString(3, "%" + Search + "%");
			ps.setString(4, "%" + Search + "%");

			rs = ps.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (getConnection() != null) {
				getConnection().close();
			}

		}

		return rs;

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

	public String fullprofile() throws SQLException, Exception
	{
	
		beanl = new ArrayList<Welcome>();
		
//		System.out.println(email);
		rs2 = report(email);
		
		int i = 0;
    	
    	if (rs2 != null) {
    	while (rs2.next()) {
    	i++;
    	System.out.println(i);
    	beans = new Welcome();  	   	
    	beans.setFname(rs2.getString("Fname"));
    	beans.setLname(rs2.getString("Lname"));
    	beans.setCity(rs2.getString("City"));
    	beans.setCountry(rs2.getString("Country"));
    	beans.setEmail(rs2.getString("Email"));
    	beans.setDate(rs2.getString("Date"));
    	beans.setQua(rs2.getString("Qua"));
    	beans.setNumber(rs2.getString("Number"));
    	beanl.add(beans);
    	}
    	}
    	
    	System.out.println(i);
    	if (i == 0) {
    	noData = false;
    	} else {
    	noData = true;
    	}
    	
    	
        return "success";  
		
		
	}
	
	public ResultSet report(String email) throws SQLException, Exception {
		ResultSet rs = null;
		try {
			System.out.println(email);
			String sql = "SELECT * FROM employee where Email = ?";
			PreparedStatement ps = getConnection().prepareStatement(sql);
			ps.setString(1, email);
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
	
	public void setSearch(String Search)
	{
		this.Search = Search;
	}
	
	public String getSearch()
	{
		return Search;
	}
	
	public boolean isNoData() {
		return noData;
		}
	
	public void setNoData(boolean noData) {
		this.noData = noData;
		}
	
	public ArrayList<Welcome> getBeanList() {
		return beanList;
		}
	
	public void setBeanl(ArrayList<Welcome> beanl)
	{
		this.beanl = beanl;
	}
	
	public ArrayList<Welcome> getBeanl()
	{
		return beanl;
	}
	
	public void setBeanList(ArrayList<Welcome> beanList) {
		this.beanList = beanList;
		}
}



