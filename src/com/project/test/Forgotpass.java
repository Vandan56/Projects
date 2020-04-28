package com.project.test;

import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.*;
import javax.mail.internet.*;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

public class Forgotpass extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 375526095309813590L;
	private String email;
	private SessionMap<String, Object> sessionMaps;

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return this.email;
	}

	public void setSession(Map<String, Object> map) {
		this.sessionMaps = (SessionMap) map;
	}

	public boolean forgot(String email) throws SQLException {
		boolean i = false;
		try{
			String sql = "select * from employee where Email= ?";
			Connection con = DBC.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			i = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(DBC.getConnection() != null) {
				DBC.getConnection().close();
			}
		}
		return i;
	}

	@Override
	public String execute() throws SQLException, Exception {

		if (email != null) {
			System.out.println("email is verified!");
			Forgotpass mao = new Forgotpass();
			boolean rs = mao.forgot(email);

			Random rand = new Random();
			int otp = rand.nextInt(900000) + 100000;

			if (rs == true) {

				String to = getEmail();
				// Getting the session object
				Properties prop = new Properties();
				prop.put("mail.smtp.host", "smtp.gmail.com");
				prop.put("mail.smtp.socketFactory.port", "465");
				prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				prop.put("mail.smtp.auth", "true");
				prop.put("mail.smtp.port", "465");
				Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("jobs.abc.portal@gmail.com", "abcjobs123");
					}
				});

				try {
					MimeMessage message = new MimeMessage(session);
					message.setFrom(new InternetAddress("jobs.abc.portal@gmail.com"));
					message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
					message.setSubject("Hello! You there, Ring Ring");
					message.setText("Your otp is  " + otp);
					// send message
					Transport.send(message);
					System.out.println("message sent successfully to " + getEmail()+ " and the opt is " + otp);

				} catch (MessagingException e) {
					throw new RuntimeException(e);
				}
			} else {
				addActionMessage("Incorrect Email!");
				return "failure";
			}

			sessionMaps.put("mail", "true");
			sessionMaps.put("otp", otp);
			sessionMaps.put("email", email);

		}
		return "success";
	}
}
