package com.struts2.actionTest;

import com.opensymphony.xwork2.ActionSupport;

//action的实现方式一：普通Java类包含public string execute方法
public class TeacherAction extends ActionSupport {
	public String add(){
		return "success";
	}
	public String delete(){
		return "success";
	}
}
