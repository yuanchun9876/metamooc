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
	<link rel="stylesheet" href="<%=request.getContextPath() %>/home/css/video-js.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/home/css/customerBar.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/home/css/swiper-4.2.6.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/home/css/animate.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/home/css/load.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/home/css/style.css">
	<script src="<%=request.getContextPath() %>/home/js/jquery-1.11.3.min.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/video.min.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/videojs-ie8.min.js"></script>
	<script type="text/javascript">
		videojs.options.flash.swf = "<%=request.getContextPath() %>/home/js/video-js.swf";
	</script>
	<script src="<%=request.getContextPath() %>/home/js/customerBar.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/swiper-4.2.6.min.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/swiper.animate1.0.3.min.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/load.js"></script>
	<!-- 白云 -->
	<script src="<%=request.getContextPath() %>/home/js/ThreeWebGL.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/ThreeExtras.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/Detector.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/RequestAnimationFrame.js"></script>
	<script src="<%=request.getContextPath() %>/home/js/cloud.js"></script>
</head>
<body>
	<div class="load">
		<div class="bar">
			<div class="progress">
				<div class="progress-bar" style="width: 24%;"><span class="img"></span></div>
			</div>
		</div>
	</div>
	<div class="swiper-container" id="sp1">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="banner">
					<img src="<%=request.getContextPath() %>/home/images/xsxd_banner_hill.png" alt="">
					<div class="logo clearfix">
						<img src="<%=request.getContextPath() %>/home/images/xsxd_logo.png" alt="">
						<ul>
							<li><a href="index.html">线上习得</a></li>
							<li><a href="<%=request.getContextPath()%>/login.jsp">线下面授</a></li>
							<li><a href="gdzc.html">搞定职场</a></li>
							<li><a href="about.html">关于我们</a></li>
						</ul>
					</div>
					<div class="con">
						<img src="<%=request.getContextPath() %>/home/images/xsxd_banner_title.png" alt="" class="ani" swiper-animate-effect="fadeInLeft" swiper-animate-duration="0.8s" swiper-animate-delay="0.3s">
						<img src="<%=request.getContextPath() %>/home/images/xsxd_banner_circle.png" alt="" class="ani" swiper-animate-effect="fadeInRight" swiper-animate-duration="0.8s" swiper-animate-delay="0.3s">
					</div>
					<!-- <div class="videoBar"><a href=""><img src="images/xsxd_video_ico.png" alt=""></a></div> -->
				</div>
			</div>
			<div class="swiper-slide">
				<div class="zxkc">
					<div class="part">
						<div class="con">
							<h1 class="ani" swiper-animate-effect="fadeIn" swiper-animate-duration="0.8s" swiper-animate-delay="0.3s">【图灵云<span>Meta</span>在线课堂】</h1>
							<ul class="clearfix ani" swiper-animate-effect="fadeIn" swiper-animate-duration="0.8s" swiper-animate-delay="0.6s">
								<li>
									<a href="<%=request.getContextPath() %>/login/loginPage.action?subjId=1" target="_blank">
										<span class="glyphicon glyphicon-expand"></span>
										<img src="<%=request.getContextPath() %>/home/images/xsxd_zxkc_p1.jpg" alt="">
										<div class="progress">
											<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 85%;">课程完成：85%</div>
										</div>
									</a>
									<p>JavaSE</p>
								</li>
								<li class="disabled">
									<a href="login.jsp?NUM=2" target="_blank">
										<span class="glyphicon glyphicon-expand"></span>
										<img src="<%=request.getContextPath() %>/home/images/xsxd_zxkc_p2.jpg" alt="">
										<div class="progress">
											<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">课程完成：20%</div>
										</div>
									</a>
									<p>JavaWeb</p>
								</li>
								<li>
									<a href="login.jsp?NUM=3" target="_blank">
										<span class="glyphicon glyphicon-expand"></span>
										<img src="<%=request.getContextPath() %>/home/images/xsxd_zxkc_p3.jpg" alt="">
										<div class="progress">
											<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">课程完成：25%</div>
										</div>
									</a>
									<p>Linux</p>
								</li>
								<li>
									<a href="login.jsp?NUM=4" target="_blank">
										<span class="glyphicon glyphicon-expand"></span>
										<img src="<%=request.getContextPath() %>/home/images/xsxd_zxkc_p4.jpg" alt="">	
										<div class="progress">
											<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">课程完成：30%</div>
										</div>
									</a>
									<p>大数据</p>
								</li>
								<li class="disabled">
									<a href="login.jsp?NUM=5" target="_blank">
										<span class="glyphicon glyphicon-expand"></span>
										<img src="<%=request.getContextPath() %>/home/images/xsxd_zxkc_p5.jpg" alt="">
										<div class="progress">
											<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 10%;">课程完成：10%</div>
										</div>
									</a>
									<p>Python</p>
								</li>
								<li class="disabled">
									<a href="login.jsp?NUM=6" target="_blank">
										<span class="glyphicon glyphicon-expand"></span>
										<img src="<%=request.getContextPath() %>/home/images/xsxd_zxkc_p6.jpg" alt="">
										<div class="progress">
											<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">课程完成：20%</div>
										</div>
									</a>
									<p>校招特训</p>
								</li>
								<li class="disabled">
									<a href="login.jsp?NUM=7" target="_blank">
										<span class="glyphicon glyphicon-expand"></span>
										<img src="<%=request.getContextPath() %>/home/images/xsxd_zxkc_p7.jpg" alt="">
										<div class="progress">
											<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">课程完成：20%</div>
										</div>
									</a>
									<p>SQL</p>
								</li>
								<li class="disabled">
									<a href="login.jsp?NUM=8" target="_blank">
										<span class="glyphicon glyphicon-expand"></span>
										<img src="<%=request.getContextPath() %>/home/images/xsxd_zxkc_p8.jpg" alt="">
										<div class="progress">
											<div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">课程完成：20%</div>
										</div>
									</a>
									<p>搞定职场</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="java">
					<a href="">
						<div class="con ani" swiper-animate-effect="fadeInLeft" swiper-animate-duration="0.8s" swiper-animate-delay="0.3s">
							<p>最新开课时间</p>
							<p>6月19日</p>
							<p>我们不见不散</p>
						</div>
						<div class="rightBtn"><a href=""><img src="<%=request.getContextPath() %>/home/images/xsxd_java_p3.png" alt=""></a></div>
					</a>
					<!-- <div class="videoBar"><a href=""><img src="images/xsxd_video_ico.png" alt=""></a></div> -->
				</div>
			</div>
			<div class="swiper-slide">
				<div class="txy">
					<a href="gzmq.html">
						<div class="cloud">
							<!-- <div>MySOL</div> -->
						</div>
						<img src="<%=request.getContextPath() %>/home/images/xsxd_txy_p6.png" alt="" class="ani" swiper-animate-effect="fadeInDown" swiper-animate-duration="0.8s" swiper-animate-delay="0.3s">
						
						<div class="rightBtn"><img src="<%=request.getContextPath() %>/home/images/xsxd_txy_p5.png" alt=""></div>
					</a>
					<!-- <div class="videoBar"><a href=""><img src="images/xsxd_video_ico.png" alt=""></a></div> -->
				</div>
			</div>
			<div class="swiper-slide">
				<div class="tyzy">
					<div class="part">
						<a href="">
							<div class="con">
								<img src="<%=request.getContextPath() %>/home/images/xsxd_tyzy_p1.png" alt="" class="ani" swiper-animate-effect="zoomInDown" swiper-animate-duration="0.8s" swiper-animate-delay="0.3s">
								<img src="<%=request.getContextPath() %>/home/images/xsxd_tyzy_p2.png" alt="" class="ani" swiper-animate-effect="zoomInDown" swiper-animate-duration="0.8s" swiper-animate-delay="0.6s">
							</div>
							<div class="rightBtn"><a href=""><img src="<%=request.getContextPath() %>/home/images/xsxd_tyzy_p3.png" alt=""></a></div>
						</a>
						<!-- <div class="videoBar"><a href=""><img src="images/xsxd_video_ico.png" alt=""></a></div> -->
					</div>
					<footer class="text-center">
						<p>版权所有 Copyright© 2001-2018 turingmeta.com,All Rights Reserved</p>
						<p>版权所有：哈尔滨今日灵图职业培训学校 地址:黑龙江省哈尔滨市南岗区西大直街318号六、七楼</p>
						<p>黑ICP备09037379号 技术支持：图灵云教育 技术支持团队</p>
					</footer>
				</div>
			</div>
		</div>
		<div class="swiper-pagination"></div>
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
						<p>152 0451 9212<br /><i>7*24小时客服服务热线</i></p>  
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
						<img src="<%=request.getContextPath() %>/home/images/ewm.jpg" />
						<i>添加美女咨询</i>
						<i>获取更多资料</i>
					</div>
					<span class="arrow-right"></span>
				</div>
			</div>
		</div>
		<div class="cndns-right-meau meau-top" id="top-back">
			<a href="javascript:" class="cndns-right-btn" onclick="swiperTop()">
				<span class="demo-icon">&#xe904;</span>
				<i>顶部</i>
			</a>
		</div>
	</div>
	<script>
		//swiper整页滑屏
		var mySwiper = new Swiper('#sp1', {
			direction : 'vertical',
			mousewheel: true,
			pagination: {
				el: '.swiper-pagination',
				clickable :true
			},
			on:{
				init: function(){
				swiperAnimateCache(this); //隐藏动画元素 
				swiperAnimate(this); //初始化完成开始动画
				}, 
				slideChangeTransitionEnd: function(){ 
					swiperAnimate(this); //每个slide切换结束时也运行当前slide动画
				} 
			}
		})

		//cloud云标签
		var cloudWord=["招聘信息","企业题库","抉择参谋","笔面指导","经典算法","Java","C/C++","数据结构","操作系统","网络技术","项目经验","数学逻辑"];
		for(var i=0;i<cloudWord.length;i++){
			$(".cloud").append("<div style='animation:cloudLeft "+(Math.random()*5+9)+"s "+Math.random()*5+"s infinite linear;top:"+Math.random()*40+"%;'>"+cloudWord[i]+"</div>");
		}
		
		//返回top
		function swiperTop(){
			mySwiper.slideTo(0, 1000, false);
		}
		


		



		
	</script>
</body>
</html>