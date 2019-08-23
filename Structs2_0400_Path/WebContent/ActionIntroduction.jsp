<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Action学习界面</title>
</head>
<body>
	<font color="red">
			1、Action的创建方式
		<br>
		1) POJO类(PlainOldJavaObjects简单的Java对象)，不需要继承任何父类，实现任何接口
		<code>
		1 public class TestAction {
		2     public String execute() {
		3         return "success";
		4     }
		5 }
		</code>
这种方式是Struts2框架通过反射来实现的，步骤：
<br>
struts2框架通过读取struts.xml配置文件获得完整的Action类名；<br>
object = Class.forName("完整类名").newInstance();<br>
Method method = Class.forName("完整类名").getMethod("execute");<br> 
method.invoke(object); <br>
2)实现Action接口<br>

复制代码<br>
<code>
 1 public class TestAction implements Action {
 2     /**
 3      * 可以不重写execute方法，用自定义的方法，但是
 4      * 在配置文件中需要显示指定方法名method=要执行的方法
 5      */
 6     @Override
 7     public String execute() {
 8         return "success";
 9     }
10 }
复制代码
Action接口中，定义默认五种逻辑视图名称:

public static final String SUCCESS = "success";  // 数据处理成功 （成功页面）
public static final String NONE = "none";  // 页面不跳转  return null; 效果一样
public static final String ERROR = "error";  // 数据处理发送错误 (错误页面)
public static final String INPUT = "input"; // 用户输入数据有误，通常用于表单数据校验 （输入页面）
public static final String LOGIN = "login"; // 主要权限认证 (登陆页面)
五种逻辑视图用来解决Action处理数据后，跳转页面
</code>
3)继承ActionSupport类(推荐)

其实ActionSupport类本身已经实现了Action接口，而且可以在Action中使用表单校验、错误信息设置、读取国际化信息三个功能，所以推荐使用。
<code>
复制代码
 1 public class TestAction extends ActionSupport {
 2     /**
 3      * 可以不重写execute方法，用自定义的方法，但是
 4      * 在配置文件中需要显示指定方法名method=要执行的方法
 5      */
 6     @Override
 7     public String execute() {
 8         return "success";
 9     }
10 }
复制代码
2、Action的访问

在配置<action>元素时，没有指定method属性，默认执行Action类中execute方法。

1)基本访问

在jsp页面中有下面的action访问路径：

struts.xml的配置文件：

复制代码
 1 
复制代码
通过<-package>的namespace与<-action>的name属性结合与请求资源路径对比，可以知道访问哪一个action，在通过<-action>的class知道访问哪一个Action类，通过method知道访问哪
	</code>
	</font>
</body>
</html>