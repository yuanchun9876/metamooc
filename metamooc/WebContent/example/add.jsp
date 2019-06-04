<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>添加页面</title>
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

	  <style>
			/*表格条件查询的样式  */
			.box-header{display: flex;}
			.box-header .box-search{max-width:300px;padding-right: 10px;}
			.box-header .box-search:last-child{margin-left: auto;}
			/*表格中td的样式 */
			.box-body table th{text-align: center;}
			.box-body table td{text-align: center;}

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
          	客户添加
        </h1>
      </section>
  
      <!-- Main content -->
      <section class="content">
        <div class="row">
          <form class="form form-horizontal" method="post" onsubmit="return addSaveCustom()">
          <!-- left column -->
          	<div class="col-md-6">
            <!-- general form elements -->
            	<div class="box box-primary">
              		<div class="box-header with-border">
                	<h3 class="box-title">基本信息</h3>
              	</div>
              	<!-- /.box-header -->
              	<!-- form start -->
	   			<div class="box-body">
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">客户姓名</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="cusName" oninput="validName(this, '请输入正确姓名')" pattern="^[\u4e00-\u9fa5]+$" placeholder="输入您的真实姓名" required="required">
						</div>
				  </div>
				  <div class="form-group">
					<label for="sex" class="col-sm-2 control-label">客户性别</label>
					<div class="col-sm-10 radio text-left">
			        <label>
			          <input type="radio">男
			        </label>
			         <label>
			          <input type="radio">女
			        </label>
					</div>
				  </div>
				  <div class="form-group">
						<label for="cardid" class="col-sm-2 control-label">身份证号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"  name='cusCardId' placeholder="请您输入身份证号" onblur="validUid(this)" required="required" >
						</div>
				  </div>
				  <div class="form-group">
						<label for="birth" class="col-sm-2 control-label">出生日期</label>
						<div class="col-sm-10">
							<input type="text" name="cusBirth" class="form-control" data-inputmask="'alias': 'yyyy/mm/dd'" data-mask required="required">
						</div>
				  </div>
				  <div class="form-group">
						<label for="birth" class="col-sm-2 control-label">政治面貌</label>
						<div class="col-sm-10">
							<select class="form-control" name="cusPolitical" >
								<option  value = "" >请选择</option>
								<option  value = "" >党员</option>
								<option  value = "" >非党员</option>
							</select>
						</div>
				  </div>
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<button type="button"  class="btn btn-default" onclick="cleanUp(this)">清空</button>
				</div>
				<!-- /.box-footer -->
            </div>
            <!-- /.box -->
  
          </div>
          <!--/.col (left) -->
          <!-- right column -->
          <div class="col-md-6">
            <!-- Horizontal Form -->
            <div class="box box-info">
              <div class="box-header with-border">
                <h3 class="box-title">联系信息</h3>
              </div>
              <!-- /.box-header -->
              <!-- form start -->
              <div class="box-body">
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">联系电话</label>
  
                    <div class="col-sm-10">
                      <input type="tel" name="cusTel" class="form-control" onblur="validTel(this)" placeholder="请您输入联系电话" required="required" >
                    </div>
                  </div>
                  <div class="form-group">
					<div class="col-sm-2">
						<button type="button" class="btn btn-info set-code">获取验证码</button>
					</div>
					<div class="col-sm-10">
						<input type="text" required="required" onblur="validSMSCode(this)" class="form-control">
					</div>
                  </div>
			  	  <div class="form-group">
			  		 <div class="col-sm-2">
						<button type="button" onclick="copyAddress()" class="btn btn-info">复制地址</button>
					 </div>
				     <div class="col-sm-10 ">
					    <div id="distpicker">
						  	<select id="Address1" style="height: 34px"></select>
						  	<select id="Address2" style="height: 34px;margin-left: 5px"></select>
						  	<select id="Address3" style="height: 34px;margin-left: 5px"></select>
					     </div>
				     </div>
			      </div>
				  <div class="form-group">
					<label class="col-sm-2 control-label">详细地址</label>
					<div class="col-sm-10">
						<textarea rows="3" class="form-control" name="cusAddress" required="required"></textarea>
					</div>
				  </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                	<button type="button"  class="btn btn-default" onclick="cleanUp(this)">清空</button>
                	<button type="submit"  class="btn btn-info pull-right">提交</button>
                </div>
                <!-- /.box-footer -->
            </div>
            <!-- /.box -->
            <!-- /.modal -->
          </div>
          <!--/.col (right) -->
         </form>
        </div>
        <!-- /.row -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
  </div>
</body>
  <!-- jQuery 3 -->
	<script src="../static/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="../static/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="../static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script src="../static/bower_components/raphael/raphael.min.js"></script>
	<script src="../static/bower_components/morris.js/morris.min.js"></script>
	<!-- Sparkline -->
	<script src="../static/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="../static/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="../static/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="../static/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="../static/bower_components/moment/min/moment.min.js"></script>
	<script src="../static/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script src="../static/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script src="../static/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="../static/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="../static/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="../static/dist/js/adminlte.min.js"></script>

	<!-- datetimepicker -->
	<script src="../static/bower_components/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<script src="../static/bower_components/bootstrap-datetimepicker/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../static/dist/js/demo.js"></script>
	<!-- bootbox -->
	<script src="../static/bower_components/bootbox/js/bootbox.js"></script>
	<!-- 省市区三级联动插件 -->
	<script src="../static/plugins/dist/distpicker.data.js"></script>
	<script src="../static/plugins/dist/distpicker.js"></script>
	<!-- daterangepicker -->
	<script src="../static/bower_components/moment/min/moment.min.js"></script>
	<script src="../static/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script src="../static/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- InputMask -->
	<script src="../static/plugins/input-mask/jquery.inputmask.js"></script>
	<script src="../static/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="../static/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<!-- 金额大小写及限制输入 -->
	<script src="../static/bower_components/capitals/capitals.js"></script>
	<!-- iCheck -->
	<script src="../static/plugins/iCheck/icheck.min.js"></script>
	
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script type="text/javascript">
	  $.widget.bridge('uibutton', $.ui.button);


	
	$(document).on("click",".set-code:not(.disabled)",function(){
		//验证手机号格式是否正确
		var telIpt = document.getElementsByName("cusTel")[0];
		if(telIpt.value=="" || telIpt.validity.customError){
			bootbox.alert("手机格式不正确或手机号已被占用!");
			return;
		}
		$(this).addClass("disabled").text("30秒后重发");
		setCodeTimerSecond=30;
		setCodeTimer=setInterval(function(){
			setCodeTimerSecond--;
			if(setCodeTimerSecond<0){
				clearInterval(setCodeTimer);
				$(".set-code").removeClass("disabled").text("获取验证码");
			}else{
				$(".set-code").text(setCodeTimerSecond+"秒后重发");
			}
		},1000);
		//发送短信验证码
		var url = "/customerFiling/sendCode";
		$.post(url,{tel:telIpt.value},function(msg){
			if(!msg.result){
				clearInterval(setCodeTimer);
				$(".set-code").removeClass("disabled").text("获取验证码");
			}
			bootbox.alert(msg.message);
		},"json");
	})
	//验证手机号是否重复
	function validTel(inputElement){
		var tel = inputElement.value;
		//先进行格式检查
		var t = /^1(3|4|5|6|7|8|9)\d{9}$/;
		if(!t.test(tel)){
			inputElement.validity.patternMismatch = true;
			inputElement.setCustomValidity("手机号格式不正确!");
			return;
		}
		var url = "/customerFiling/checkCustomertTel";
		var data = {tel:tel};
		$.ajax({
			async:false,
			url:url,
			data:data,
			dataType:"json",
			success:function(msg){
				if(msg.result=="success"){
					inputElement.validity.patternMismatch = false;
					inputElement.setCustomValidity("");
				}else{
					inputElement.validity.patternMismatch = true;
					inputElement.setCustomValidity(msg.message);
				}
			}
		});
	}
	
	//验证手机验证码
	function validSMSCode(inputElement){
		var url = "/customerFiling/checkSMSCode";
		var data = {smsCode:inputElement.value};
		$.ajax({
			async:false,
			url:url,
			data:data,
			dataType:"json",
			success:function(msg){
				if(msg.result=="success"){
					inputElement.validity.patternMismatch = false;
					inputElement.setCustomValidity("");
				}else{
					inputElement.validity.patternMismatch = true;
					inputElement.setCustomValidity(msg.message);
				}
			}
		});
		
	}
	
	//验证身份证号是否重复
	function validUid(inputElement){
		var uid = inputElement.value;
		//对身份证的格式进行检查
		var t = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/;
		if(!t.test(uid)){
			$("input[name='patientBirthday']").val("");
			inputElement.validity.patternMismatch = true;
			inputElement.setCustomValidity("身份证号格式不正确!");
			return;
		}
		var url = "/customerFiling/checkCustomerUid";
		var data = {uid:uid};
		$.ajax({
			async:false,
			url:url,
			data:data,
			dataType:"json",
			success:function(msg){
				if(msg.result=="success"){
					//身份证号可用
					inputElement.validity.patternMismatch = false;
					inputElement.setCustomValidity("");
				}else{
					inputElement.validity.patternMismatch = true;
					inputElement.setCustomValidity(msg.message);
				}
			}
		});
	}
	
    //验证客户姓名
	function validName(inputElement, text) {
		 if (inputElement.validity.patternMismatch) {
			 inputElement.setCustomValidity(text);
		    } else {
		    	inputElement.validity.patternMismatch = false;
		    	inputElement.setCustomValidity('');
		    }
	}
    
    // 添加客户信息
	function addSaveCustom(){
		var formData = $("form").serialize();
		$.ajax({
			type:"post",
			url:"/customerFiling/saveCustom",
			cache:false,
			data:formData,
			dataType:"json",
			success:function(rv){
				bootbox.alert(rv.message);	
				//清空表单数据
				$("form").find("input").val("");
				$("form").find("textarea").html("");
				$("form").find("select").each(function (i, j) {
			    $(j).find("option:selected").prop("selected", false);
			    $(j).find("option").first().prop("selected", true);
			    });
			}
		});
		return false;
	}
    
	//验证身份证号是否重复
	function checkIdentify(inputElement){
		var uid = inputElement.value;
		console.info(uid)
		//对身份证的格式进行检查
		var t = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/;
		if(!t.test(uid)){
			$("input[name='cusBirth']").val("");
			inputElement.validity.patternMismatch = true;
			inputElement.setCustomValidity("身份证号格式不正确!");
			return;
		}
		$.ajax({
			type: "POST",
			url: "/custom/checkIdentify",
			data: {cusCardId:uid},
			dataType: "json",
			cache: false,
			async: false,
			success: function(map){
				if(map.success==true){
					//身份证号可用
					var birth = uid.substr(6,4)+"-"+uid.substr(10,2)+"-"+uid.substr(12,2);
					$("input[name='cusBirth']").val(birth);
					inputElement.validity.patternMismatch = false;
					inputElement.setCustomValidity("");
				}else{
					$("input[name='cusBirth']").val("");
					inputElement.validity.patternMismatch = true;
					inputElement.setCustomValidity(map.failed);
				}
			}
		});
		
	}
	
   //复制地址
     function copyAddress(){
    	 var option1=$("#Address1 option:selected").text(); 
    	 var option2=$("#Address2 option:selected").text(); 
    	 var option3=$("#Address3 option:selected").text(); 
    	$("textarea[name='cusAddress']").html(option1+"-"+option2+"-"+option3); 
    }
   
   //清空
   function cleanUp(btn){
	   parDiv = $(btn).parent().parent();
	   parDiv.find("input").val("");
	   parDiv.find("textarea").html("");
	   parDiv.find("select").each(function (i, j) {
	        $(j).find("option:selected").prop("selected", false);
	        $(j).find("option").first().prop("selected", true);
	    });
   }
</script>
</html>