<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<script src="<%=request.getContextPath() %>/classroom/js/isPhone.js"></script>
	<meta charset="UTF-8">
	<title>图灵云教育|Meta在线课堂|校园招聘特训营</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="keywords" content="图灵云教育，Meta，在线教育，JavaSE，JavaWeb，大数据，Python，校园招聘，turingedu.com，turingmeta.com，校招笔试题">
	<link rel="shortcut icon" href="<%=request.getContextPath() %>/classroom/images/favicon.ico">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/classroom/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/classroom/css/video-js.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/classroom/css/swiper-4.2.6.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/classroom/css/animate.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/classroom/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/classroom/css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/classroom/css/video.css">
	<script src="<%=request.getContextPath() %>/classroom/js/jquery-1.11.3.min.js"></script>
	<script src="<%=request.getContextPath() %>/classroom/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath() %>/classroom/js/video.min.js"></script>
	<script src="<%=request.getContextPath() %>/classroom/js/videojs-ie8.min.js"></script>
	<script type="text/javascript">
		videojs.options.flash.swf = "<%=request.getContextPath() %>/classroom/js/video-js.swf";
	</script>
	<script src="<%=request.getContextPath() %>/classroom/js/swiper-4.2.6.min.js"></script>
	<script src="<%=request.getContextPath() %>/classroom/js/swiper.animate1.0.3.min.js"></script>
	<script src="<%=request.getContextPath() %>/classroom/js/echarts.min.js"></script>
	<script src="<%=request.getContextPath() %>/classroom/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="<%=request.getContextPath() %>/classroom/js/ueditor/ueditor.config.js"></script>
	<script src="<%=request.getContextPath() %>/classroom/js/ueditor/ueditor.parse.min.js"></script>
    <script src="<%=request.getContextPath() %>/classroom/js/ueditor/ueditor.all.min.js"> </script>
</head>
<body onselectstart="return false;">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">
					<img src="<%=request.getContextPath() %>/classroom/images/video_logo.png" alt="">
					<span>JavaSE在线课堂</span>
				</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">课堂讲授</a></li>
					<li><a href="#">知识体系</a></li>
					<li><a href="#">测评驱动</a></li>
					<li class="user">
						<a href="#" class="clearfix">
							<img src="<%=request.getContextPath() %>/classroom/images/user.png" alt="">
							<div>
								<span>张同学</span>
								<span><span class="glyphicon glyphicon-star"></span>积分：1785</span>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="main">
		<div class="leftBar">
			<h1><img src="<%=request.getContextPath() %>/classroom/images/leftBar_title.png" alt="">课程大纲<small>JavaSE Outline</small></h1>
			<div class="search">
				<form action="" method="post">
					<input type="text" name="search">
					<button><span class="fa fa-search"></span></button>
				</form>	
			</div>
			<ul>
				<li><div class="pro echarts" data-progress="100"></div><a href="">Java学前准备</a></li>
				<li ><div class="pro echarts" data-progress="100"></div><a href="">流程结构TGC学习法</a></li>
				<li class="active"><div class="pro echarts" data-progress="70"></div><a href="">Game框架</a></li>
				<li><div class="pro echarts" data-progress="20"></div><a href="">数组基础</a></li>
				<li><div class="pro echarts" data-progress="40"></div><a href="">综合实战《贪吃蛇》</a></li>
				<li><div class="pro echarts" data-progress="10"></div><a href="">方法封装</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">类与对象</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">三性质</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">五关系</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">容器基础</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">Java语法大全</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">基础API</a></li>
				<li><div class="pro echarts" data-progress="0"></div><a href="">如果某一节课的标题文字特别特别特别特别特别特别特别特别特别特别特别特别多就会隐藏起来</a></li>
			</ul>
			<div class="drag"><span></span></div>
		</div>
		<div class="videoMain">
			<div class="bread">
				<div class="swiper-button-prev"><span class="fa fa-chevron-left"></span></div>
				<div class="swiper-container">
					<ul class="breadcrumb swiper-wrapper">
						<li class="swiper-slide"><a href="#">什么是编程</a></li>
						<li class="swiper-slide active">敏锐识别流程结构</li>
						<li class="swiper-slide"><a href="#">汉英对照闯过语法关</a></li>
						<li class="swiper-slide"><a href="#">用调试工具搞定语义关</a></li>
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
						<li class="swiper-slide"><a href="#">TGC学习法轻松过语用关</a></li>	
					</ul>
				</div>
				<div class="swiper-button-next"><span class="fa fa-chevron-right"></span></div>		
			</div>
			<div class="video">
				<video src="<%=request.getContextPath() %>/classroom/video/ceshi.mp4" width="1920" height="1080" id="V1" class="video-js vjs-default-skin videoCentered vjs-big-play-centered" preload poster="<%=request.getContextPath() %>/classroom/video/ceshi.jpg"></video>
			</div>
		</div>
		<div class="rightBar">
			<ul>
				<li><a href="#"><span class="fa fa-lightbulb-o fa-2x"></span>匹配</a></li>
				<li><a href="#"><span class="fa fa-pencil-square fa-2x"></span>笔记</a></li>
				<li><a href="#"><span class="fa fa-download fa-2x"></span>下载</a></li>
				<li><a href="#"><span class="fa fa-calendar-check-o fa-2x"></span>小测</a></li>
				<li><a href="#"><span class="fa fa-file-image-o fa-2x"></span>图文</a></li>
				<li><a href="#"><span class="fa fa-tag fa-2x"></span>标签</a></li>
				<li><a href="#"><span class="fa fa-commenting fa-2x"></span>求助</a></li>
				<li><a href="#"><span class="fa fa-commenting fa-2x"></span>客服</a></li>
			</ul>
		</div>
		<div class="rightMenu">
			<div class="mate">
				<ul>
					<li>
						<h1>变量</h1>
						<ul>
							<li><a href="#myModal" data-toggle="modal" data-src="<%=request.getContextPath() %>/classroom/video/ceshi.mp4">变量基本概念</a></li>
						</ul>
					</li>
					<li>
						<h1>运算符与表达式</h1>
						<ul>
							<li><a href="">算术运算</a></li>
							<li><a href="">逻辑运算</a></li>
							<li><a href="">关系运算</a></li>
						</ul>
					</li>
					<li>
						<h1>流程结构</h1>
						<ul>
							<li><a href="#myModal" data-toggle="modal" data-src="<%=request.getContextPath() %>/classroom/video/ceshi2.mp4">顺序结构<span class="badge">重要</span></a></li>
							<li><a href="">选择结构<span class="badge">重要</span></a></li>
							<li><a href="">循环结构<span class="badge">重要</span></a></li>
							<li><a href="">如果万一要是有特别多海量的文字的时候该怎么办呢<span class="badge">重要</span></a></li>
							<li><a href="">可能只有一些<span class="badge">重要</span></a></li>
							<li><a href="">也有长字符串的时候<span class="badge">重要</span></a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
							<li><a href="">条数多了加滚动条</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="note">
				<ul class="con">
					<li class="ask">
						<p>不明白为什么?</p>
						<div class="ico clearfix">
							<span class="time"><span class="fa fa-video-camera"></span>2:40</span>
							<span class="fa fa-close"></span>
							<span class="fa fa-file-text-o"></span>		
						</div>
					</li>
					<li class="gain">
						<p>简单的来说，反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						<div class="ico clearfix">
							<span class="time"><span class="fa fa-video-camera"></span>2:40</span>
							<span class="fa fa-close"></span>
							<span class="fa fa-file-text-o"></span>		
						</div>
					</li>
					<li class="help">
						<p>什么是变量？</p>
						<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						<div class="ico clearfix">
							<span class="time"><span class="fa fa-video-camera"></span>2:40</span>
							<span class="fa fa-close"></span>
						</div>
					</li>
					<li class="ask">
						<p>不明白为什么?</p>
						<div class="ico clearfix">
							<span class="time"><span class="fa fa-video-camera"></span>2:40</span>
							<span class="fa fa-close"></span>
							<span class="fa fa-file-text-o"></span>		
						</div>
					</li>
					<li class="ask">
						<p>不明白为什么?</p>
						<div class="ico clearfix">
							<span class="time"><span class="fa fa-video-camera"></span>2:40</span>
							<span class="fa fa-close"></span>
							<span class="fa fa-file-text-o"></span>		
						</div>
					</li>
					<li class="help">
						<p>什么是变量？</p>
						<div class="ico clearfix">
							<span class="time"><span class="fa fa-video-camera"></span>2:40</span>
							<span class="fa fa-close"></span>
							<span class="fa fa-file-text-o"></span>		
						</div>
					</li>
					<li class="gain">
						<p>简单的来说，反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						<div class="ico clearfix">
							<span class="time"><span class="fa fa-video-camera"></span>2:40</span>
							<span class="fa fa-close"></span>
							<span class="fa fa-file-text-o"></span>		
						</div>
					</li>
					<li class="gain">
						<p>简单的来说，反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						<div class="ico clearfix">
							<span class="time"><span class="fa fa-video-camera"></span>2:40</span>
							<span class="fa fa-close"></span>
							<span class="fa fa-file-text-o"></span>		
						</div>
					</li>
				</ul>
				<form action="">
					<script id="editor" type="text/plain"></script>
					<div class="button">
						<button>新增</button>
						<button>保存</button>
					</div>
				</form>
			</div>
			<div class="download">
				<ul>
					<li>
						<h1>课堂代码</h1>
						<ul>
							<li><a href="">流程结构与TGC<span class="fa fa-download"></span></a></li>
							<li><a href="">Demo流程结构<span class="fa fa-download"></span></a></li>
						</ul>
					</li>
					<li>
						<h1>开发工具</h1>
						<ul>
							<li><a href="">JDK8<span class="fa fa-download"></span></a></li>
							<li><a href="">Eclipsez中文教学版<span class="fa fa-download"></span></a></li>
						</ul>
					</li>
					<li>
						<h1>学习手册</h1>
						<ul>
							<li><a href="">JDK7手册<span class="fa fa-download"></span></a></li>
							<li><a href="">APIdemo大全<span class="fa fa-download"></span></a></li>
						</ul>
					</li>
					<li>
						<h1>本次作业</h1>
						<ul>
							<li><a href="">基础训练<span class="fa fa-download"></span></a></li>
							<li><a href="">深度训练<span class="fa fa-download"></span></a></li>
							<li><a href="">高级训练<span class="fa fa-download"></span></a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="test">
				<ul class="pagination">
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>			
				</ul>
				<ul class="exercises">
					<li class="active" data-answer="能存储对象数据">
						<h1>1、题目：反射机制其实就是指程序，java的变量理解正确的是____</h1>
						<ul>
							<li><input type="radio" name="test0"><span>A:存储数据的地址</span></li>
							<li><input type="radio" name="test0"><span>B:一个自定义的名字</span></li>
							<li><input type="radio" name="test0"><span>C:随便写点啥信息文字凑字符字符特别多了会换行</span></li>
							<li><input type="radio" name="test0"><span>D:能存储对象数据</span></li>
						</ul>
						<button class="submit">确定</button>
					</li>
					<li data-answer="推uierte|尔特人">
						<h1>2、题目：java的变量理解正确的是____</h1>
						<ul>
							<li><input type="checkbox" name="test1"><span>A:阿三地方记</span></li>
							<li><input type="checkbox" name="test1"><span>B:尔特人</span></li>
							<li><input type="checkbox" name="test1"><span>C:推uierte</span></li>
							<li><input type="checkbox" name="test1"><span>D:阿三温热引用地方记</span></li>
						</ul>
						<button class="submit">确定</button>
					</li>
					<li data-answer="阿三是的非官方地方记">
						<h1>3、题目：java的变量理解正确的是____</h1>
						<ul>
							<li><input type="radio" name="test2"><span>A:适当的放松</span></li>
							<li><input type="radio" name="test2"><span>B:阿三是的非官方地方记</span></li>
							<li><input type="radio" name="test2"><span>C:收购华盛顿</span></li>
							<li><input type="radio" name="test2"><span>D:获得丰厚的</span></li>
						</ul>
						<button class="submit">确定</button>
					</li>
					<li data-answer="收到好多好多好">
						<h1>4、题目：java的变量理解正确的是____</h1>
						<ul>
							<li><input type="radio" name="test3"><span>A:收到好多好多好</span></li>
							<li><input type="radio" name="test3"><span>B:胜多负少士大夫</span></li>
							<li><input type="radio" name="test3"><span>C:似的发射点发射点</span></li>
							<li><input type="radio" name="test3"><span>D:去啊分</span></li>
						</ul>
						<button class="submit">确定</button>
					</li>
					<li data-answer="尔特">
						<h1>5、题目：java的变量理解正确的是____</h1>
						<ul>
							<li><input type="radio" name="test4"><span>A:阿三交换机地方记</span></li>
							<li><input type="radio" name="test4"><span>B:大范甘迪</span></li>
							<li><input type="radio" name="test4"><span>C:尔特人</span></li>
							<li><input type="radio" name="test4"><span>D:尔特</span></li>
						</ul>
						<button class="submit">确定</button>
					</li>
					<li data-answer="问题问题">
						<h1>6、题目：java的变量理解正确的是____</h1>
						<ul>
							<li><input type="radio" name="test5"><span>A:与</span></li>
							<li><input type="radio" name="test5"><span>B:委任为惹我</span></li>
							<li><input type="radio" name="test5"><span>C:问题问题</span></li>
							<li><input type="radio" name="test5"><span>D:微软</span></li>
						</ul>
						<button class="submit">确定</button>
					</li>
				</ul>
				<div class="button">
					<div class="answer"><span>正确答案：</span><a href=""><span class="fa fa-toggle-right"></span>视频解析</a><a href=""><span class="fa fa-star"></span>收藏题目</a></div>
					<ul class="pager">
						<li><a href="#" class="disabled">上一题</a></li>
						<li class="page">1</li>
						<li><a href="#">下一题</a></li>
					</ul>
				</div>
			</div>
			<div class="imageText">
				<img src="<%=request.getContextPath() %>/classroom/images/imageText.jpg" alt="">
				<p>哈尔滨图灵云教育仍始终秉承着以“实战为导向”，“质量为中心”的教育理念，坚持着“以企业岗位需求为根本，以学员的高品质就业为目标”，“与全球IT技术发展同步”的原则顽强的战斗在推动学员就业的前线。学校始终以诚信为本，坚守“良心教育，放心就业”的信念。</p>
				<p>图灵云教育始建于2001年，历经十多年的发展，已经成为集科研，教育，产品输出一体化的哈尔滨龙头高端IT培训企业。</p>
				<p>我们在IT培训方面秉承着“以实战为导向，以质量为中心”的教学理念，随着全球IT技术的不断进步而不断发展创新，在哈尔滨电脑学校中有着一定的权威。</p>
				<p>哈尔滨图灵云教育以中国IT产品的人力教育基础为使命，致力于探索IT职业教育的有效模式。图灵云始终坚持将职业素质教育与知识技能教育并重，以企业岗位需求为根本，以学员的高品质就业为目标。</p>
				<p>凭借在众多领域的开发经验和强大的技术支持，图灵云一直致力于哈尔滨Java培训，Linux培训，python培训，SQL培训，大数据培训，来提供企业IT服务。</p>
				<p>力争成为国内一流的，国际知名的软件培训课程产品，IT培训教学方案的一流提供商。打造国内高端IT培训领军品牌，为民族IT产业发展做出更大的贡献。</p>
				<img src="<%=request.getContextPath() %>/classroom/images/imageText.jpg" alt="">
				<p>哈尔滨图灵云教育仍始终秉承着以“实战为导向”，“质量为中心”的教育理念，坚持着“以企业岗位需求为根本，以学员的高品质就业为目标”，“与全球IT技术发展同步”的原则顽强的战斗在推动学员就业的前线。学校始终以诚信为本，坚守“良心教育，放心就业”的信念。</p>
				<p>图灵云教育始建于2001年，历经十多年的发展，已经成为集科研，教育，产品输出一体化的哈尔滨龙头高端IT培训企业。</p>
				<p>我们在IT培训方面秉承着“以实战为导向，以质量为中心”的教学理念，随着全球IT技术的不断进步而不断发展创新，在哈尔滨电脑学校中有着一定的权威。</p>
				<p>哈尔滨图灵云教育以中国IT产品的人力教育基础为使命，致力于探索IT职业教育的有效模式。图灵云始终坚持将职业素质教育与知识技能教育并重，以企业岗位需求为根本，以学员的高品质就业为目标。</p>
				<p>凭借在众多领域的开发经验和强大的技术支持，图灵云一直致力于哈尔滨Java培训，Linux培训，python培训，SQL培训，大数据培训，来提供企业IT服务。</p>
				<p>力争成为国内一流的，国际知名的软件培训课程产品，IT培训教学方案的一流提供商。打造国内高端IT培训领军品牌，为民族IT产业发展做出更大的贡献。</p>
			</div>
			<div class="label">
				<ul class="aleady">
					<li><span class="txt">简单易懂</span><span class="fa fa-close"></span></li>
					<li><span class="txt">简单易懂</span><span class="fa fa-close"></span></li>
					<li><span class="txt">简单易懂</span><span class="fa fa-close"></span></li>
					<li><span class="txt">简单易懂</span><span class="fa fa-close"></span></li>
				</ul>
				<ul class="mod">
					<li><span class="txt">简单易懂</span><span class="fa fa-close"></span></li>
					<li><span class="txt">简单易懂</span><span class="fa fa-close"></span></li>
					<li><span class="txt">简单易懂</span><span class="fa fa-close"></span></li>
					<li><span class="txt">简单易懂</span><span class="fa fa-close"></span></li>
				</ul>
				<form action="">
					<input type="text">
					<button><span class="fa fa-plus"></span></button>
				</form>
			</div>
			<div class="help">
				<ul>
					<li>
						<div class="head" style="background-image: url(<%=request.getContextPath() %>/classroom/images/user.png);"></div>
						<div class="con">
							<p>什么是变量？</p>
							<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						</div>
					</li>
					<li>
						<div class="head" style="background-image: url(<%=request.getContextPath() %>/classroom/images/user.png);"></div>
						<div class="con">
							<p>什么是变量？</p>
							<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						</div>
					</li>
					<li>
						<div class="head" style="background-image: url(<%=request.getContextPath() %>/classroom/images/user.png);"></div>
						<div class="con">
							<p>什么是变量？</p>
							<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						</div>
					</li>
					<li>
						<div class="head" style="background-image: url(<%=request.getContextPath() %>/classroom/images/user.png);"></div>
						<div class="con">
							<p>什么是变量？</p>
							<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						</div>
					</li>
					<li>
						<div class="head" style="background-image: url(<%=request.getContextPath() %>/classroom/images/user.png);"></div>
						<div class="con">
							<p>什么是变量？</p>
							<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						</div>
					</li>
					<li>
						<div class="head" style="background-image: url(<%=request.getContextPath() %>/classroom/images/user.png);"></div>
						<div class="con">
							<p>什么是变量？</p>
							<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						</div>
					</li>
					<li>
						<div class="head" style="background-image: url(<%=request.getContextPath() %>/classroom/images/user.png);"></div>
						<div class="con">
							<p>什么是变量？</p>
							<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						</div>
					</li>
					<li>
						<div class="head" style="background-image: url(<%=request.getContextPath() %>/classroom/images/user.png);"></div>
						<div class="con">
							<p>什么是变量？</p>
							<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						</div>
					</li>
					<li>
						<div class="head" style="background-image: url(<%=request.getContextPath() %>/classroom/images/user.png);"></div>
						<div class="con">
							<p>什么是变量？</p>
							<p class="teacher"><span>老师的解答：</span><br>反射机制其实就是指程序在运行的时候能够获取自身的信息。</p>
						</div>
					</li>
				</ul>



			</div>
			<span class="fa fa-close"></span>
		</div>
	</div>
	<footer class="text-center">
		<p>版权所有 Copyright© 2001-2018 turingmeta.com,All Rights Reserved 哈尔滨今日灵图职业培训学校 地址:黑龙江省哈尔滨市南岗区西大直街318号六、七楼</p>
	</footer>



	<!-- 模态窗 -->
	<div class="modal fade" tabindex="-1" role="dialog" id="myModal">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title text-center">变量基本概念</h4>
				</div>
				<div class="modal-body">
					<video src="<%=request.getContextPath() %>/classroom/video/ceshi.mp4" width="1920" height="1080" id="V2" class="video-js vjs-default-skin videoCentered vjs-big-play-centered" preload poster="<%=request.getContextPath() %>/classroom/video/ceshi.jpg"></video>
				</div>
			</div>
		</div>
	</div>


	<script>
		var player1 = videojs("V1", {
				fluid: true,
				"controls": true,
				"autoplay": false,
				"preload": "auto",
				"loop": false,
				controlBar: {
					captionsButton: false,
					chaptersButton: false,
					playbackRateMenuButton: true,
					LiveDisplay: true,
					subtitlesButton: false,
					remainingTimeDisplay: true,
					progressControl: true,
					volumeMenuButton: {
						inline: false,
						vertical: true
					},//竖着的音量条
					fullscreenToggle: true
				}
			}, 
			function () {
				/*次处用于自定义控制条等*/
		});

		var player2 = videojs("V2", {
				fluid: true,
				"controls": true,
				"autoplay": false,
				"preload": "auto",
				"loop": false,
				controlBar: {
					captionsButton: false,
					chaptersButton: false,
					playbackRateMenuButton: true,
					LiveDisplay: true,
					subtitlesButton: false,
					remainingTimeDisplay: true,
					progressControl: true,
					volumeMenuButton: {
						inline: false,
						vertical: true
					},//竖着的音量条
					fullscreenToggle: true
				}
			}, 
			function () {
				/*次处用于自定义控制条等*/
		});



		//左边栏拖拽
		var dragW=0;
		$(".drag").mousedown(function(e){
			$(this).addClass("active");
			dragW=$(".leftBar").width();
			mouseX=e.clientX;
		})
		$(".drag").mouseup(function(e){
			$(this).removeClass("active");
		})
		$(document).mousemove(function(e){
			if($(".drag").hasClass("active") && e.buttons==1){
				$(".leftBar").width(dragW+e.clientX-mouseX);
			}
		})



		//左边栏进度
		for(var i=0;i<$(".leftBar li .echarts").length;i++){
			var obj=$(".leftBar li .echarts").get(i);
			var myChart = echarts.init(obj);
			var echartsColor=$(obj).attr("data-progress")>=100?"#7dcf3b":"#e64545";
			option = {
				series : [
					{
						type: 'pie',
						radius : '100%',
						center: ['50%', '50%'],
						data:[
							{value:$(obj).attr("data-progress")},
							{value:100-$(obj).attr("data-progress")}
						],
						label: {
							normal: {
								show: false
							},
							emphasis: {
								show: false
							}
						},
						silent:true,
						color:[echartsColor, 'rgba(255,255,255,0.3)']
					}
				]
			};
			myChart.setOption(option);
		}




		//swiper课程小节导航
		var mySwiper = new Swiper('.videoMain .swiper-container', {
			mousewheel: true,
			freeMode :true,
			slidesPerView :'auto',
			pagination: {
				el: '.swiper-pagination',
				clickable :true
			},
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
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



		//右侧菜单
		$(".rightMenu>.fa").click(function(){
			$(".rightMenu").removeClass("active");
			$(".rightBar li").removeClass("active");
		})
		$(".rightBar li").click(function(){
			$(this).addClass("active").siblings().removeClass("active");
			$(".rightMenu").addClass("active").children("div").eq($(this).index()).addClass("active").siblings("div").removeClass("active");
			if(!$(".mate>ul").hasClass("mCustomScrollbar") && $(".mate").hasClass("active")){
				$(".mate>ul").mCustomScrollbar({
					scrollInertia:150
				});
			}
			if(!$(".note>ul.con").hasClass("mCustomScrollbar") && $(".note").hasClass("active")){
				$(".note>ul.con").mCustomScrollbar({
					scrollInertia:150
				});
				UE.getEditor('editor').setHeight(100);
				$("#ueditor_0").contents().find("body").css("height","auto");
			}
			if(!$(".imageText").hasClass("mCustomScrollbar") && $(".imageText").hasClass("active")){
				$(".imageText").mCustomScrollbar({
					scrollInertia:150
				});
			}
			if(!$(".rightMenu>.help>ul").hasClass("mCustomScrollbar") && $(".rightMenu>.help").hasClass("active")){
				$(".rightMenu>.help>ul").mCustomScrollbar({
					scrollInertia:150
				});
			}
		})


		//问答编辑器
		var ue = UE.getEditor('editor',{
			toolbars: [['insertcode', '|', 'undo', 'redo', '|', 'bold', 'italic', 'underline','insertimage','blockquote','link','unlink','insertorderedlist','insertunorderedlist','preview']],
			initialFrameWidth:'auto'  
        	,initialFrameHeight:'auto' 
        	,autoHeightEnabled:false
		});
		$(".note form").on('mouseover',function(){
			$(".note .con").css("height","30%");
			// $(".note>ul.con").mCustomScrollbar("update");
		})
		$(".note .con").on('mouseover',function(){
			$(".note .con").css("height","70%");
			$(".note>ul.con").mCustomScrollbar("update");
		})


		$(document).ready(function(){
			//一屏自适应
			videoHeight();
			$(".leftBar>ul").mCustomScrollbar({
				scrollInertia:150
			});
		})

		$(window).resize(function(){
			//一屏自适应
			videoHeight();
		})


		//小测选题
		$(document).on("click",".test .pagination a",function(){
			var index=$(this).parent().index();
			$(".test .exercises>li").removeClass("active").eq(index).addClass("active");
			$(".test .button .page").text(index+1);
			if(index<=0){
				$(".test .button li a:first").addClass("disabled");
			}else{
				$(".test .button li a:first").removeClass("disabled");
			}
			if(index>=$(".test .exercises>li").length-1){
				$(".test .button li a:last").addClass("disabled");
			}else{
				$(".test .button li a:last").removeClass("disabled");
			}
			testChange();
		})
		$(document).on("click",".test .exercises .submit",function(){
			var answer=$(this).css("display","none").parent().attr("data-answer").split("|");
			var ok=true;
			for(var i=0;i<answer.length;i++){	
				var obj=$(this).prev().find("span").filter(function(){return $(this).text().slice($(this).text().indexOf(":")+1)==answer[i]});
				obj.css("color","#c0ff92");
				if(!obj.prev().prop("checked")){
					ok=false;
				}
			}
			if(ok){
				$(".test .pagination li").eq($(this).closest("li[data-answer]").index()).addClass("green");
			}else{
				$(".test .pagination li").eq($(this).closest("li[data-answer]").index()).addClass("red");
			}
			$(this).prev().find("input").attr("disabled",true);
			$(".test .button .answer").css("display","block");
		})
		$(document).on("click",".test .button li a:first:not(.disabled)",function(){
			var index=$(".test .exercises>li.active").index()-1;
			$(".test .exercises>li.active").removeClass("active").prev().addClass("active");
			$(".test .button .page").text(index+1);
			$(".test .button li a:last").removeClass("disabled");
			testChange();
			if(index<=0){
				$(this).addClass("disabled");
			}
		})
		$(document).on("click",".test .button li a:last:not(.disabled)",function(){
			var index=$(".test .exercises>li.active").index()+1;
			$(".test .exercises>li.active").removeClass("active").next().addClass("active");
			$(".test .button .page").text(index+1);
			$(".test .button li a:first").removeClass("disabled");
			testChange();
			if(index>=$(".test .exercises>li").length-1){
				$(this).addClass("disabled");
			}
		})



		//小测题目切换
		function testChange(){
			var active=$(".test .exercises>li.active");
			if($(".test .pagination li").eq(active.index()).hasClass("red") || $(".test .pagination li").eq(active.index()).hasClass("green")){
				$(".test .button .answer").css("display","block");
			}else{
				$(".test .button .answer").css("display","none");
			}
			var answer=active.attr("data-answer").split("|");
			var result=[]; 
			for(var i=0;i<answer.length;i++){	
				var obj=$(".test .exercises>li.active li span").filter(function(){return $(this).text().slice($(this).text().indexOf(":")+1)==answer[i]});
				result.push(obj.text().slice(0,obj.text().indexOf(":")));
			}
			result=result.sort();
			$(".test .button .answer>span").text("正确答案："+result.join(","));
		}



		//一屏自适应
		function videoHeight(){
			var winW=window.innerWidth;
			var winH=window.innerHeight;
			var newVideoH=winH-$(".navbar").outerHeight(true)-$("footer").outerHeight(true)-$(".bread").outerHeight(true)-parseInt($(".videoMain").css("paddingTop"))*2;
			var newLeftH=winH-$(".navbar").outerHeight(true)-$("footer").outerHeight(true)-$(".leftBar>h1").outerHeight(true)-$(".leftBar .search").outerHeight(true)-parseInt($(".leftBar").css("paddingTop"))*2;
			var newRightH=winH-$(".navbar").outerHeight(true)-$("footer").outerHeight(true)-parseInt($(".rightMenu").css("paddingTop"))*2;
			if(winH-$(".navbar").outerHeight(true)-$("footer").outerHeight(true)<=$(".rightBar>ul").height()){
				newVideoH=$(".rightBar>ul").height()-$(".bread").outerHeight(true);
				newLeftH=$(".rightBar>ul").height()-$(".leftBar>h1").outerHeight(true)-$(".leftBar .search").outerHeight(true);
				newRightH=$(".rightBar>ul").height();
			}
			var newLeftW=winW-$(".rightBar").outerWidth(true)-16/9*newVideoH-parseInt($(".videoMain").css("paddingLeft"))*2-parseInt($(".leftBar").css("paddingLeft"))*2;
			$(".videoMain .video").height(newVideoH);
			$(".leftBar>ul").height(newLeftH);
			$(".leftBar").width(newLeftW);
			$(".rightMenu .mate>ul").height(newRightH);
			$(".rightMenu .note>ul").height(newRightH-207);
			$(".rightMenu .imageText").height(newRightH);
			$(".rightMenu>.help>ul").height(newRightH);
		}



		//模态窗
		$("#myModal").on("show.bs.modal",function(e){
			$(".modal-header h4",this).text($(e.relatedTarget).text());
			$(".modal-body video",this).attr("src",$(e.relatedTarget).attr("data-src"));	
		})
	</script>
</body>
</html>