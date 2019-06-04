<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>查询页面</title>
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
	  <!-- AdminLTE Skins. Choose a skin from the css/skins
	       folder instead of downloading all of them to reduce the load. -->
	  <link rel="stylesheet" href="<%=request.getContextPath()%>/static/dist/css/skins/_all-skins.min.css">

	  <style>
			/*表格条件查询的样式  */
			.box-header{display: flex;}
			.box-header .box-search{max-width:300px;padding-right: 10px;}
			.box-header .box-search:last-child{margin-left: auto;}
			/*表格中td的样式 */
			.box-body table th{text-align: center;}
			.box-body table td{text-align: center;}
	  </style>
    <style th:fragment="modal-body">
	      .modal-body .form-group{display: flex;}
	      .modal-body .form-group>input{display: block;
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
										-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
										box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
										-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
										-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
										transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;}
		.modal-body .form-group>input:focus{border-color: #66afe9;
									        outline: 0;
									        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
									        box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);}
	    .modal-body .form-group>label{padding-right: 5px;}
	    .content-wrapper{
	    	margin-left:0px;
	    }
	  </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
         	客户查询
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> 客户建档</a></li>
          <li class="active"><a href="#">客户查询</a></li>
        </ol>
      </section>
  
      <!-- Main content -->
     
     	 <section class="content">
        <div class="box">
         <form name="infoForm" id="queryForm" method="post" >
        	<div class="box-header clearfix">
				<div class="box-search">
					<div class="input-group">
						<span class="input-group-addon" style="background: #EEEEEE;">客户姓名</span>
						<input type="text" class="form-control"   value="" name="cusName" placeholder="请输入客户姓名">
					</div>
				</div>
				<div class="box-search">
					<div class="input-group">
						<span class="input-group-addon" style="background: #EEEEEE;">身份证号</span>
						<input type="text" class="form-control" value="" name="cusCardId" placeholder="请输入身份证号">
					</div>
				</div>
				<div class="box-search">
					<div class="input-group">
						<span class="input-group-addon" style="background: #EEEEEE;">客户编号</span>
						<input type="text" class="form-control" value="" name="cusNo" placeholder="请输入客户编号">
					</div>
				</div>
				<div class="box-search">
					<button class="btn btn-info" name="queryInfo">查询</button>
					<button class="btn btn-primary" name="queryInfo">清空</button> &nbsp;&nbsp;&nbsp;&nbsp;
					<button class="btn btn-success" name="queryInfo">添加</button>
					<button class="btn btn-warning" name="queryInfo">删除</button>
				</div>
        	</div>
        	</form>
        	<!-- /.box-header -->
        	<div class="box-body no-padding">
        		<table class="table table-striped">
        			<tr>
        				<th>序号</th>
        				<th>全选</th>
        				<th>客户名称</th>
        				<th>客户编号</th>
        				<th>证件号码</th>
								<th>创建时间</th>
								<th>操作</th>
        			</tr>
        		
        			<tr >
        			  <td >1</td>
        			  <td ><input type="checkbox" name="ids" value="1"></td>
        				<td >王小二</td>
        				<td >KH001</td>
        				<td >214365199001011234</td>
        				<td >2019-09-08</td>
								<td><button type="button" class="btn btn-primary btn-sm" onclick="javascript:editpage('1')">修改</button></td>
        			</tr>
        			<tr >
        			  <td >2</td>
        			  <td ><input type="checkbox" name="ids" value="1"></td>
        				<td >王小二</td>
        				<td >KH001</td>
        				<td >214365199001011234</td>
        				<td >2019-09-08</td>
								<td><button type="button" class="btn btn-primary btn-sm" onclick="javascript:editpage('1')">修改</button></td>
        			</tr>
        			<tr >
        			  <td >3</td>
        			  <td ><input type="checkbox" name="ids" value="1"></td>
        				<td >王小二</td>
        				<td >KH001</td>
        				<td >214365199001011234</td>
        				<td >2019-09-08</td>
								<td><button type="button" class="btn btn-primary btn-sm" onclick="javascript:editpage('1')">修改</button></td>
        			</tr>
        			<tr >
        			  <td >4</td>
        			  <td ><input type="checkbox" name="ids" value="1"></td>
        				<td >王小二</td>
        				<td >KH001</td>
        				<td >214365199001011234</td>
        				<td >2019-09-08</td>
								<td><button type="button" class="btn btn-primary btn-sm" onclick="javascript:editpage('1')">修改</button></td>
        			</tr>
        		</table>
        	</div>
<!--         	/.box-body -->
			
<!-- 		/. box-footer -->
        </div>
        <!-- /.row -->
      </section>
      <!-- /.content -->
    </div>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script src="<%=request.getContextPath()%>/static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- AdminLTE App -->
	<script src="<%=request.getContextPath()%>/static/dist/js/adminlte.min.js"></script>

	<!-- AdminLTE for demo purposes -->
	<script src="<%=request.getContextPath()%>/static/dist/js/demo.js"></script>
	<!-- bootbox -->
	<script src="<%=request.getContextPath()%>/static/bower_components/bootbox/js/bootbox.js"></script>
	
	<!-- InputMask -->
	<script src="<%=request.getContextPath()%>/static/plugins/input-mask/jquery.inputmask.js"></script>
	<script src="<%=request.getContextPath()%>/static/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="<%=request.getContextPath()%>/static/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<!-- 金额大小写及限制输入 -->
	<script src="<%=request.getContextPath()%>/static/bower_components/capitals/capitals.js"></script>
	<!-- iCheck -->
	<script src="<%=request.getContextPath()%>/static/plugins/iCheck/icheck.min.js"></script>
	
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	
	<script type="text/javascript">
	  $.widget.bridge('uibutton', $.ui.button);
	  //这里给所有ajax请求添加一个complete函数来处理ajax被拦截的情况
	  $.ajaxSetup({ 
		  complete : function(xhr, status) { 
		  //拦截器实现超时跳转到登录页面
		  // 通过xhr取得响应头
		  var REDIRECT = xhr.getResponseHeader("REDIRECT"); 
		  //如果响应头中包含 REDIRECT 则说明是拦截器返回的 
		  if (REDIRECT == "REDIRECT") { 
		  	var win = window; 
			while (win != win.top) 
			{ 
				win = win.top; 
			} 
			//重新跳转到 login.html 
			win.location.href = xhr.getResponseHeader("CONTEXTPATH"); 
			} 
		} 
	});

	$(function(){
		$('#datemask').inputmask('yyyy/mm/dd', { 'placeholder': 'yyyy/mm/dd' })
		$('[data-mask]').inputmask();
	})
	//条件查询
	$("button[name='queryInfo']").on("click",function(){
		$("form[name='infoForm']").attr("action","/customerFiling/customList");
		$("form[name='infoForm']").submit();
	})
	  //跳转修改页
		function editpage(id){
		
			location.href="#";
		
		  return false;
	}
</script>
</body>
</html>