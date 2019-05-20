<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("NUM");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<script src="js/isPhone.js"></script>
	<meta charset="UTF-8">
	<title>图灵云教育|Meta在线课堂|校园招聘特训营</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="keywords" content="图灵云教育，Meta，在线教育，JavaSE，JavaWeb，大数据，Python，校园招聘，turingedu.com，turingmeta.com，校招笔试题">
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/customerBar.css">
	<link rel="stylesheet" href="css/login.css">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/customerBar.js"></script>	
</head>
<body class="bg<%=num%>">
	<div class="login clearfix">
		<div class="left"><img src="images/login_bg<%=num%>.jpg" alt=""></div>
		<div class="right">
			<%
				String src = "";
				int kc_num=Integer.parseInt(num);
				switch(kc_num){
					case 1:
					src="metajavase";
					break;
					case 3:
					src="metalinux";
					break;
					case 4:
					src="metabigdata";
					break;
				}
			%>
			<form action="<%=src%>/video.jsp" method="post">
				<img src="images/ewm2.jpg" alt="">
				<p>学习邀请码:</p>
				<input type="text" name="yqm" placeholder="请输入扫码后获得的邀请码">
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