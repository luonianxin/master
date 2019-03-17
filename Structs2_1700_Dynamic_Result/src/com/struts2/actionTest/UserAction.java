package com.struts2.actionTest;

import com.opensymphony.xwork2.ActionSupport;

//action的实现方式一：普通Java类包含public string execute方法
public class UserAction extends ActionSupport {
	private int type;
	private String r;
	
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	@Override
	public String execute() throws Exception {
		if(type==1){
			r ="/UserSuccess.jsp";
		}
		if(type==2){
			r ="/UserError.jsp";
		}
		 return SUCCESS;
	}
}
