package com.struts2.actionTest;

import com.opensymphony.xwork2.ActionSupport;
import com.struts2.model.User;

//action��ʵ�ַ�ʽһ����ͨJava�����public string execute����
public class UserAction extends ActionSupport {
	private User user;


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public String add(){
		System.out.println("usename="+user.getName());
		System.out.println("userage="+user.getAge());
		return SUCCESS;
	}
	
}
