<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
         	资料类型查询
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
          <li class="active"><a href="#">资料类型查询</a></li>
        </ol>
      </section>
  
      <!-- Main content -->
     
     	 <section class="content">
        <div class="box">
         <form name="infoForm" id="queryForm" method="post" >
        	<div class="box-header clearfix">
				<div class="box-search btn-group">
					<button class="btn btn-info" name="queryInfo">查询</button>
					<button class="btn btn-primary" name="queryInfo">清空</button>
					<button class="btn btn-success"  type="button" name="queryInfo"  onclick="addPage()" >添加</button>
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
        				<th>类型名称</th>
						<th>教师说明</th>
						<th>操作</th>
        			</tr>
        			<c:forEach items="${list }" var="rsrcType" varStatus="i">
        			<tr >
        			  <td >${i.count }</td>
        			  <td ><input type="checkbox" name="ids" value="1" value="${rsrcType.rsrcTypeId }"></td>
        				<td >${rsrcType.rsrcTypeName }</td>
        				<td >${rsrcType.rsrcTypeInfo }</td>
						<td>
							<button type="button" class="btn btn-primary btn-sm" onclick="javascript:editpage('${rsrcType.rsrcTypeId }')">修改</button>
						</td>
        			</tr>
        			</c:forEach>
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

	  
	function addPage(){
		location.href = "<%=request.getContextPath()%>/tch/addPage.action"; 
	}

	function editpage(id){
		location.href = "<%=request.getContextPath()%>/tch/editPage.action?tchId=" + id; 
	}
	

</script>
</body>
</html>