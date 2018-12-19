<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%    
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主页面</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<div class="container">
	  <div class="row">
	      <div class="col-md-3"></div>
		  <div class="col-md-6">
		  
		  		<div class="jumbotron">
				  <h1>欢迎${user.uname }访问该系统。</h1>
				  <p>.......</p>
				  <p><a class="btn btn-primary btn-lg" href="#" role="button">点击了解更多</a></p>
				</div>
				
		  </div>
		  <div class="col-md-3"></div>
	  </div>
	</div>
	
	

<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>