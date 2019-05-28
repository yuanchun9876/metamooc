<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<script src="<%=request.getContextPath() %>/home/js/isPhone.js"></script>
	<meta charset="UTF-8">
	<title>图灵云教育|Meta在线课堂|校园招聘特训营</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="keywords" content="图灵云教育，Meta，在线教育，JavaSE，JavaWeb，大数据，Python，校园招聘，turingedu.com，turingmeta.com，校招笔试题">
	<link rel="shortcut icon" href="<%=request.getContextPath() %>/home/images/favicon.ico">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/home/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/home/css/customerBar.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/home/css/login.css">
	<script src="<%=request.getContextPath() %>/home/js/jquery-1.11.3.min.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/customerBar.js"></script>	
</head>
<body class="bg<%=request.getAttribute("subjId")%>">
	<div class="login clearfix">
		<div class="left"><img src="<%=request.getContextPath() %>/home/images/login_bg<%=request.getAttribute("subjId")%>.jpg" alt=""></div>
		<div class="right">
			<%=request.getAttribute("msg")!=null?request.getAttribute("msg"):"" %>
			<form action="<%=request.getContextPath()%>/login/login.action" method="post">
				<input type="hidden" name="subjId" value="<%=request.getAttribute("subjId")%>" >
				<p>学习卡号:</p>
				<input type="text" name="crdSn" placeholder="请输入学习卡号">
				<p>登录密码:</p>
				<input type="text" name="pass" placeholder="请输入登录密码">
				<button>进入图灵云课堂<span class="glyphicon glyphicon-hand-right"></span></button>
			</form>
		</div>
	</div>
	
	
	<!--右侧客服-->
	<div class="cndns-right">
		<div class="cndns-right-meau meau-sev">
			<a href="javascript:" class="cndns-right-btn">
				<span class="demo-icon">&#xe901;</span>
				<p>在线<br />客服</p>
			</a>
			<div class="cndns-right-box">
				<div class="box-border">
					<div class="sev-t clearfix">
						<span class="demo-icon">&#xe901;</span>
						<p>在线客服<i>服务时间：9:00-17:00</i></p>
					</div>
					<div class="sev-b">
						<h4>选择下列课程马上在线沟通：</h4>
						<ul id="zixunUl" class="clearfix">
							<li><a href="javascript:void(0);">JavaSe</a></li>
							<li><a href="javascript:void(0);">JavaEE</a></li>
							<li><a href="javascript:void(0);">MySOL数据库</a></li>
							<li><a href="javascript:void(0);">大数据</a></li>
							<li><a href="javascript:void(0);">Python</a></li>
						</ul>
					</div>
					<span class="arrow-right"></span>
				</div>
			</div>
		</div>
		<div class="cndns-right-meau meau-contact">
			<a href="javascript:" class="cndns-right-btn">
				<span class="demo-icon">&#xe902;</span>
				<p>客服<br />热线</p>
			</a>
			<div class="cndns-right-box">
				<div class="box-border tel">
					<div class="sev-t">
						<span class="demo-icon">&#xe902;</span>
						<p>189 4608 9127<br /><i>7*24小时客服服务热线</i></p>  
	                </div>
					<span class="arrow-right"></span>
				</div>
			</div>
		</div>
		<div class="cndns-right-meau meau-code">
			<a href="javascript:" class="cndns-right-btn">
				<span class="demo-icon">&#xe903;</span>
				<p>关注<br />微信</p>
			</a>
			<div class="cndns-right-box">
				<div class="box-border">
					<div class="sev-t">
						<img src="images/ewm.jpg" />
						<i>添加美女咨询</i>
						<i>获取更多资料</i>
					</div>
					<span class="arrow-right"></span>
				</div>
			</div>
		</div>
		<div class="cndns-right-meau meau-top" id="top-back">
			<a href="javascript:" class="cndns-right-btn" onclick="topBack()">
				<span class="demo-icon">&#xe904;</span>
				<i>顶部</i>
			</a>
		</div>
	</div>
</body>
</html>