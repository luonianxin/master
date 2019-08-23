package com.struts2.actionTest;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

//action的实现方式一：普通Java类包含public string execute方法
public class LoginAction1 extends ActionSupport {
	private Map request;
	private Map session;
	private Map application;
	

	public LoginAction1(){
		request = (Map)ActionContext.getContext().get("request");
		session = ActionContext.getContext().getSession();
		application = ActionContext.getContext().getApplication();
	}


	public String execute(){
		request.put("r", "r");
		session.put("s1", "s1");
		application.put("a1", "a1");
		return SUCCESS;
	}
	
}
