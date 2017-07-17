<%@ page language="java" import="java.util.*,com.zhongxing.util.*" pageEncoding="ISO-8859-1"%>
<%
	new Code().changeCode("D:/zhengyuelai/java/MyEclipse/alipaycopy/alipaysys/WebRoot/image/code.png");
%>
<img src="./image/code.png?tASDF=<%out.print(Math.random()*10);%>" id='code'>
