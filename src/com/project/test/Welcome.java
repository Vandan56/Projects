package com.project.test;

import java.sql.*;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class Welcome {

	private String fname;
	private String lname;
	private String date;
	private String number;
	private String qua;
	private String city;
	private String country;
	private String email;
	private String password;

	String result;

	public String getFname() {
		return fname;
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
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}



	public String execute() {
		try {
			Connection con=DBC.getConnection();

			PreparedStatement ps=con.prepareStatement("insert into employee values (?,?,?,?,?,?,?,?,?)");
			ps.setString(1, getFname());
			ps.setString(2, getLname());
			ps.setString(3, getDate());
			ps.setString(4, getNumber());
			ps.setString(5, getQua());
			ps.setString(6, getCity());
			ps.setString(7, getCountry());
			ps.setString(8, getEmail());
			ps.setString(9, getPassword());
			int i=ps.executeUpdate();

			if(i>0) {
				String to=email;
				//Getting the session object
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com");
				props.put("mail.smtp.socketFactory.port", "465");
				props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.port", "465");
				Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() 
					{
						return new PasswordAuthentication("jobs.abc.portal@gmail.com","abcjobs123");
					}
				});

				try {
					MimeMessage message = new MimeMessage(session);
					message.setFrom(new InternetAddress("jobs.abc.portal@gmail.com"));
					message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
					message.setSubject("Registration Confirmation");
					message.setText("Congratulation " + getFname()+ ","
							+ "You are successfully registered with us."
							+ "Welcome to ABC JOBS PVT LTE  " );
					//send message
					Transport.send(message);
					System.out.println(getEmail());


				} 
				catch (MessagingException e)
				{
					throw new RuntimeException(e);

				}

				result="success";
			}
			else {
				result="failure";
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	





}
