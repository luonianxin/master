package com.struts2.actionTest;

import com.opensymphony.xwork2.ActionSupport;

//action��ʵ�ַ�ʽһ����ͨJava�����public string execute����
public class UserAction extends ActionSupport {
	private String name;
	private int age;


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAg() {
		return age;
	}


	public void setAg(int ag) {
		this.age = age;
	}


	public String add(){
		System.out.println("name="+name);
		System.out.println("age="+age);
		return SUCCESS;
	}
	
}
