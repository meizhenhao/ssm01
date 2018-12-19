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
<title>注册页面</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript">
	function isCancel() {
		document.forms[0].action="";
	}
	
	function isCommit() {
		/*判断姓名是否为空  */
		var name = document.forms[0].uname.value;
		if(name == ""){
			alert("姓名不能为空！")
			document.forms[0].uname.focus();
			return false;
		}
		/*判断密码是否为空  */
		var pass = document.forms[0].upass.value;
		if(pass == ""){
			alert("密码不能为空！")
			document.forms[0].upass.focus();
			return false;
		}
		/*判断确认密码是否为空  */
		var repass = document.forms[0].reupass.value;
		if(repass == ""){
			alert("确认密码不能为空！");
			document.forms[0].reupass.focus();
			return false;
		}
		/*判断密码和确认密码是否一致  */
		if(pass != repass){
			alert("两次密码输入不同！");
			document.forms[0].reupass.value="";
			document.forms[0].reupass.focus();
			return false;
		}
		
		document.forms[0].submit();
		return true;
	}

</script>

</head>
<body>

	<div class="container">
	  <div class="row">
	      <div class="col-md-3"></div>
		  <div class="col-md-6">
		  
		  		<form action="user/register" method="post">
				  <div class="form-group">
				    <label for="exampleInputuname">姓名：</label>
				    <input type="text" class="form-control" name="uname" id="exampleInputuname" placeholder="请输入姓名">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputupass">密码：</label>
				    <input type="password" class="form-control" name="upass" id="exampleInputupass" placeholder="请输入密码">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputreupass">确认密码：</label>
				    <input type="password" class="form-control" name="reupass" id="exampleInputreupass" placeholder="请确认密码">
				  </div>
				  
				  <button type="submit" class="btn btn-default" onclick="isCommit()">提交</button>
				  <button type="reset" class="btn btn-default" onclick="isCancel()">重置</button>
				</form>
				
		  </div>
		  <div class="col-md-3"></div>
	  </div>
	</div>
	
	
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>