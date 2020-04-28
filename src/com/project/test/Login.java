package com.project.test;

import com.opensymphony.xwork2.ActionSupport;

public class Login extends ActionSupport{
	
	private String message;
	public String execute() {
		message="LOGIN SUCCESSFUL";
		return "success";
	}
	
	public String getMessage() {
		return message;
	}
}
