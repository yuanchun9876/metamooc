<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>MetaMooc</title>
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
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/dist/css/skins/_all-skins.min.css">
<!-- Morris chart -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Daterange picker -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<!-- datetimepicker -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/bower_components/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css">

<!-- 忽略浏览器请求图标 -->
<style>
.modal-body .form-group {
	display: flex;
}

.modal-body .form-group>input {
	display: block;
	width: 100%;
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.modal-body .form-group>input:focus {
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
}

.modal-body .form-group>label {
	padding-right: 5px;
}
</style>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="dashboard.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>Meta</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Meta</b>MOOC管理平台</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">

						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
						<img src="<%=request.getContextPath()%>/static/dist/img/user2-160x160.jpg" class="user-image" alt="张三丰老师"> <span class="hidden-xs">操作</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img src="<%=request.getContextPath()%>/static/dist/img/user2-160x160.jpg" class="img-circle" alt="张三丰老师">
									<p>
										张三丰 <small>人生如戏，全靠演技</small>
									</p>
								</li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center">
											<a href="#">修改密码</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">常用功能</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">常用功能</a>
										</div>
									</div> <!-- /.row -->
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">个人信息</a>
									</div>
									<div class="pull-right">
										<a href="#" class="btn btn-default btn-flat">退出</a>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="<%=request.getContextPath()%>/static/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p>张三丰</p>
						<a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
					</div>
				</div>
				<!-- search form -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control" placeholder="搜索..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn" class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="treeview">
						<a href="#"> 
							<i class="fa fa-user-plus"></i><span>菜单一</span><span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
						</a>
						<ul class="treeview-menu">
							<li><a href="<%=request.getContextPath()%>/example/list.jsp"  target="ifr" > <i class="fa fa-circle-o"></i> <span>列表菜单</span>
							</a></li>
							<li><a href="<%=request.getContextPath()%>/example/add.jsp"  target="ifr" > <i class="fa fa-circle-o"></i> <span>添加菜单1</span>
							</a></li>
							<li><a href="<%=request.getContextPath()%>/example/add2.jsp"  target="ifr"> <i class="fa fa-circle-o"></i> <span>添加菜单2</span>
							</a></li>
						</ul>
					</li>
					<li class="treeview"><a href="<%=request.getContextPath()%>/example/list.jsp"  target="ifr" > <i class="fa fa-user-plus"></i> <span>菜单二</span></a></li>
					<li class="treeview">
						<a href="#"> 
							<i class="fa fa-user-plus"></i><span>菜单三</span><span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span>
						</a>
						<ul class="treeview-menu">
							<li><a href="<%=request.getContextPath()%>/subjSctn/query.action"  target="ifr" > <i class="fa fa-circle-o"></i> <span>知识节</span>
							</a></li>
							<li><a href="#"> <i class="fa fa-circle-o"></i> <span>子菜单二</span>
							</a></li>
							<li><a href="#"> <i class="fa fa-circle-o"></i> <span>子菜单三</span>
							</a></li>
						</ul>
					</li>
				</ul>
			</section>
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<iframe name="ifr" src="<%=request.getContextPath()%>/common/dashboard.html"  style="width:100%;height:550px;border:0px solid;" ></iframe>
		</div>
		
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs"><b>Version</b> 2.4.0</div>
			<strong>Copyright &copy; 2018-2888 <a href="http://www.turingmeta.com">MetaMooc</a>. </strong> All rights reserved.
		</footer>
	</div>

</body>
	<!-- jQuery 3 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script src="<%=request.getContextPath()%>/static/bower_components/raphael/raphael.min.js"></script>
	<script src="<%=request.getContextPath()%>/static/bower_components/morris.js/morris.min.js"></script>
	<!-- Sparkline -->
	<script src="<%=request.getContextPath()%>/static/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="<%=request.getContextPath()%>/static/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="<%=request.getContextPath()%>/static/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="<%=request.getContextPath()%>/static/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="<%=request.getContextPath()%>/static/bower_components/moment/min/moment.min.js"></script>
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script src="<%=request.getContextPath()%>/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="<%=request.getContextPath()%>/static/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="<%=request.getContextPath()%>/static/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="<%=request.getContextPath()%>/static/dist/js/adminlte.min.js"></script>

	<!-- datetimepicker -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap-datetimepicker/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="<%=request.getContextPath()%>/static/dist/js/demo.js"></script>
	<!-- bootbox -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootbox/js/bootbox.js"></script>
	<!-- 省市区三级联动插件 -->
	<script src="<%=request.getContextPath()%>/static/plugins/dist/distpicker.data.js"></script>
	<script src="<%=request.getContextPath()%>/static/plugins/dist/distpicker.js"></script>
	<!-- daterangepicker -->
	<script src="<%=request.getContextPath()%>/static/bower_components/moment/min/moment.min.js"></script>
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- InputMask -->
	<script src="<%=request.getContextPath()%>/static/plugins/input-mask/jquery.inputmask.js"></script>
	<script src="<%=request.getContextPath()%>/static/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="<%=request.getContextPath()%>/static/plugins/input-mask/jquery.inputmask.extensions.js"></script>

	<!-- iCheck -->
	<script src="<%=request.getContextPath()%>/static/plugins/iCheck/icheck.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	
	<script type="text/javascript">
		$.widget.bridge('uibutton', $.ui.button);
	</script>
</html>