<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%    
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
<base href=" <%=basePath%>"> 

<base href="...">是用来表明当前页面的相对路径所使用的根路径的。 
比如，页面内部有一个连接，完整的路径应该是 http://localhost:80/myblog/authen/login.do 
有了这个 <base ... >以后，我的页面内容的连接，我不想写全路径，我只要写 authen/login.do就可以了。
服务器会自动把 <base ...>指定的路径和页面内的相对路径拼装起来，组成完整路径。 
如果没有这个 <base...>，那么我页面的连链接就必须写全路径，否则服务器会找不到。 
 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">  <!-- basePath已经有/了 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎使用首页</title>
</head>
<body>
	<h2>如果没有注册，请点击<a href="index/register">注册</a>，进入注册页面</h2>
	<h2>如果已经注册，请点击<a href="index/login">登录</a>，进入登录页面</h2>
</body>
</html>