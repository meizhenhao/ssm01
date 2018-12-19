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
<title>登录页面</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript">
	function isOK() {
		document.forms[0].submit();
	}
	
	function isCancel() {
		document.forms[0].uname.focus();
		document.forms[0].action="";
	}
</script>

</head>
<body>

	<div class="container">
	  <div class="row">
	      <div class="col-md-3"></div>
		  <div class="col-md-6">
		  		
		  		<form action="user/login" method="post" name="form1">
				  <div class="form-group">
				    <label for="exampleInputEmail1">姓名：</label>
				    <input type="text" class="form-control" name="uname" value="${user.uname}" id="exampleInputEmail1" placeholder="请输入姓名">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputPassword1">密码：</label>
				    <input type="password" class="form-control" name="upass" id="exampleInputPassword1" placeholder="请输入密码">
				  </div>
				  
				  <div class="checkbox">
				    <label>
				      <input type="checkbox"> 记住我
				    </label>
				  </div>
				  <button type="submit" class="btn btn-default" onclick="isOK()">登录</button>
				  <button type="reset" class="btn btn-default" onclick="isCancel()">取消</button>
				  <h3><span color="red">${errorMessage}</span></h3>
				</form>
		  		
		  </div>
		  <div class="col-md-3"></div>
	  </div>
	</div>
	
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>