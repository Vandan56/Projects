package com.project.test;

import com.opensymphony.xwork2.ActionSupport;

public class Register extends ActionSupport{
	
	private String message;
	public String execute() {
		message="REGISTERATION SUCCESSFUL";
		return "success";
	}
	
	public String getMessage() {
		return message;
	}
}
