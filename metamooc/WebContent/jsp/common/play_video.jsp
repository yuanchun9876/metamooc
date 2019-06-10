<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="<%=request.getContextPath() %>/home/css/video-js.min.css" rel="stylesheet">
	<script src="<%=request.getContextPath() %>/home/js/video.min.js"></script>
	<style type="text/css">
		.vjs-paused .vjs-big-play-button,
		.vjs-paused.vjs-has-started .vjs-big-play-button {
		    display: block;
		}
		.video-js.vjs-playing .vjs-tech {
		    pointer-events: auto;
		}
		.video-js .vjs-time-control{display:block;}
		.video-js .vjs-remaining-time{display: none;}
	</style>
</head>
<body>
	<div style="margin:0px auto;width:560px;height:340px; border:0px solid red;">
	<video id="my-player" class="video-js vjs-big-play-centered"  
	 poster="<%=request.getContextPath() %><%=request.getAttribute("pic")%>">
    	<source src="<%=request.getContextPath() %><%=request.getAttribute("vv")%>" type="video/mp4">
  	</video>
  	</div>
</body>
<script type="text/javascript">
var options = {
		fluid:true,
		controls:true, //是否显示控件，默认显示
		preload:"auto", //预加载
		autoplay:false,
		loop:false,
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
		},
		language: 'zh',
		languages: {
	    "zh": {
			"Play Video":"播放视频",
			Play: '播放',
			Pause:"暂停",
			Mute:"音量",
			"Fullscreen":"全屏",
			"Non-Fullscreen":"取消全屏"
	    	}
	   	}
	};

	var player = videojs('my-player', options, 
	function onPlayerReady() {
		videojs.log('已经准备好了');		
	  	this.play();
	  	
	  	// 播放结束
	  	this.on('ended',function() {
	    	videojs.log('播放完成');
	  	});
		this.on('pause',function(){
			videojs.log('暂停:' + this.currentTime());
		});			
	  
	});

</script>
</html>