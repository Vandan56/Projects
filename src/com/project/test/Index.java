package com.project.test;

import com.opensymphony.xwork2.ActionSupport;

public class Index extends ActionSupport{
	
	private String message;
	public String execute() {
		
		return "success";
	}
	
	public String getMessage() {
		return message;
	}
}
