package com.struts2.actionTest;

import com.opensymphony.xwork2.ActionSupport;

//action��ʵ�ַ�ʽһ����ͨJava�����public string execute����
public class UserAction extends ActionSupport {
	private String name;
	

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String add(){
		if(name==null||!(name .equals("admin"))){
			this.addFieldError("name", "name is error");
			this.addFieldError("name", "name is too short");
			return ERROR;
		}
		return SUCCESS;
	}
	
}
