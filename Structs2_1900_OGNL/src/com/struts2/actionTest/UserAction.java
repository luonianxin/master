package com.struts2.actionTest;

import com.opensymphony.xwork2.ActionSupport;

//action��ʵ�ַ�ʽһ����ͨJava�����public string execute����
public class UserAction extends ActionSupport {
	private int type;
	
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	
	public String execute() throws Exception {
		 return SUCCESS;
	}
}
