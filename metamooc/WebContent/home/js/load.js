$(function(){
  webLoad=setInterval(function(){
    $(".load .progress-bar").css("width",($(".load .progress").width()-$(".load .progress-bar").width())*0.2+$(".load .progress-bar").width());
  },1000)
})
document.onreadystatechange = () => {
  if (document.readyState === 'complete') {
      clearInterval(webLoad);
      $(".load").css("display","none");
  }
};