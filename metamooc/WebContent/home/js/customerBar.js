//置顶图标显示
$('#top-back').hide()
$(window).scroll(function(){
	 if($(this).scrollTop() > 350){
		$("#top-back").fadeIn();
	 }
	 else{
		$("#top-back").fadeOut();
	 }
  })	
//置顶事件
function topBack(){
  $('body,html').animate({scrollTop:0},300);
}