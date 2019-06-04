<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>MetaMooc登录</title>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/dist/css/AdminLTE.min.css">

<!-- Google Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<!-- 忽略浏览器请求图标 -->
<link rel="icon" href="data:image/ico;base64,aWNv">

<!-- iCheck -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/plugins/iCheck/square/blue.css">
<style>
/*改变"记住我"与前置复选框的间距及高度*/
.icheckbox_square-blue {
	margin-right: 5px;
	top: -2px
}
</style>
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<span><b>Meta</b>MOOC管理平台</span>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">登 录</p>

			<form name="info" autocomplete="off"  action="<%=request.getContextPath()%>/common/main.jsp" method="get">
				<div class="form-group has-feedback">
					<input type="text" name="acName" class="form-control" value="admin" required placeholder="账号"> <span class="fa fa-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="acPass" class="form-control" value="123qwe" required placeholder="密码" onblur="checkPass(this)">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox" name="rememberMe"
								value="true"> 记住账号
							</label>
						</div>
					</div>
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">登 录</button>
					</div>
				</div>
			</form>
			<!-- /.social-auth-links -->
			<p style="color: red; text-align: center;">登录失败的提示</p>
		</div>
		<!-- /.login-box-body -->
	</div>
	<form name="rememberMe" action="/rememberMe" method="post">
		<input type="hidden" name="accountName"> <input type="hidden"
			name="message" value="">
	</form>
	<!-- /.login-box -->
</body>
<!-- jQuery 3 -->
<script src="<%=request.getContextPath()%>/static/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<%=request.getContextPath()%>/static/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/static/dist/js/adminlte.min.js"></script>

<!-- iCheck -->
<script src="<%=request.getContextPath()%>/static/plugins/iCheck/icheck.min.js"></script>


<script type="text/javascript">
	$.widget.bridge('uibutton', $.ui.button);
	//根据key得到cookie中的值
	function getCookie(c_name) {
		if (document.cookie.length > 0) {
			c_start = document.cookie.indexOf(c_name + "=");//获取字符串的起点
			if (c_start != -1) {
				c_start = c_start + c_name.length + 1;//获取值的起点
				c_end = document.cookie.indexOf(";", c_start);//获取结尾处
				if (c_end == -1)
					c_end = document.cookie.length;//如果是最后一个，结尾就是cookie字符串的结尾
				return decodeURI(document.cookie.substring(c_start, c_end));//截取字符串返回
			}
		}
		return "";
	}

	$(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_square-blue',
			radioClass : 'iradio_square-blue',
			increaseArea : '20%' /* optional */
		});
	});

	//密码验证
	function checkPass(inputElement) {
		var passwd = inputElement.value;
		var t = /^(?![0-9]+$)(?![a-zA-Z]+$)(?!([^(0-9a-zA-Z)]|[\\(\\)])+$)([^(0-9a-zA-Z)]|[\\(\\)]|[a-zA-Z]|[0-9]){6,20}$/;
		if (!t.test(passwd)) {
			inputElement.validity.patternMismatch = true;
			inputElement
					.setCustomValidity("密码必须由数字、字母、特殊字符中至少两种组成，长度至少为6位，最多20位");
			return;
		} else {
			inputElement.validity.patternMismatch = false;
			inputElement.setCustomValidity("");
		}
	}
</script>
</html>
