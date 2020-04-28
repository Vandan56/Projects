package com.project.test;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class OtpAction extends ActionSupport {

	private static final long serialVersionUID = -7091825633312754489L;

	private int otp;

	@Override
	public String execute() throws Exception 
	{
		HttpSession session=ServletActionContext.getRequest().getSession(false);

		if(session==null || session.getAttribute("mail")==null){  

			return "failure";

		}  
		int otp = (Integer) session.getAttribute("otp");


		System.out.println(getOtp());

		if(otp == getOtp())
		{
			System.out.println("Otp matches");
			return "success";
		}

		else
		{
			System.out.println("opt does not match");
			return "failure";
		}

	}

	public int getOtp() {
		return otp;
	}

	public void setOtp(int otp) {
		this.otp = otp;
	}

}