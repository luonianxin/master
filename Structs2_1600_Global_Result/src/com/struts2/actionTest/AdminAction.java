package com.struts2.actionTest;

import com.opensymphony.xwork2.ActionSupport;

//action��ʵ�ַ�ʽһ����ͨJava�����public string execute����
public class AdminAction extends ActionSupport {
	
	@Override
	public String execute() throws Exception {
		return "admin";
	}
}
