package com.struts2.actionTest;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction2 extends ActionSupport implements RequestAware,ApplicationAware,SessionAware {
	private Map<String ,Object> request;
	private Map<String ,Object> session;
	private Map<String ,Object> application;
	
//以后主要用这种方式
	


	public String execute(){
		request.put("r", "r");
		session.put("s1", "s1");
		application.put("a1", "a1");
		return SUCCESS;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}


	@Override
	public void setApplication(Map<String, Object> application) {
		// TODO Auto-generated method stub
		this.application =  application;
	}


	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
	
}
