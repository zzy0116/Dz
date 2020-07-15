var i = 0;//放在全局变量，不然每次触发i都为0
var aa = function(){
	if(i%2==0){
		$("#dd").css("height","33px");
		$("#dd1").css("display","none");
		$("#pic1").attr("src","img/collapsed_yes.gif");
	}else{
		$("#dd").css("height","108px");
		$("#dd1").css("display","block");
		$("#pic1").attr("src","img/collapsed_no.gif");
	}
	i++;
}

var bb = function(){
	if (i % 2 == 0) {
		$("#dd2").css("height","33px");
		$("#dd3").css("display","none");
		$("#pic2").attr("src","img/collapsed_yes.gif");
	} else {
		$("#dd2").css("height","258px");
		$("#dd3").css("display","block");
		$("#pic2").attr("src","img/collapsed_no.gif");
	}
	i++;
}

var cc = function(){
	if (i % 2 == 0) {
		$("#dd4").css("height","33px");
		$("#dd5").css("display","none");
		$("#pic3").attr("src","img/collapsed_yes.gif");
	} else {
		$("#dd4").css("height","88px");
		$("#dd5").css("display","block");
		$("#pic3").attr("src","img/collapsed_no.gif");
	}
	i++;
}
$(window).scroll(function(){
	var scrollTop = $(window).scrollTop();
	if(scrollTop>120){
		$("#nav1").css("position","fixed");
		$("#nav1").css("top","0");
	}else{
		$("#nav1").css("position","static");
	}
});

$(function(){
	var allWdith = $("body").innerWidth();
	var dbodyWidth = $("#divbody").outerWidth();
	var divWidth = (allWdith - dbodyWidth) / 2;
	var erWidth  = $("#divwechat").outerWidth();
	if(divWidth>erWidth){
		$("#divwechat").css("right",divWidth - erWidth +'px');
		// divwechat.style.right = divWidth - erWidth + "px";
	}else{
		$("#divwechat").css("right","0");
		// divwechat.style.right = 0;
	}
});
 //分开写，不然动画会同步进行
 $(function(){
	 $(".li").mouseenter(function(){
		$(".ul").css("margin-top","6px");
	 	$(".ul").stop().slideDown(300);
		
	 });
	 $(".li").mouseleave(function(){
		$(".ul").css("position","absolute");
		$(".ul").css("margin-top","6px");
	 	$(".ul").finish().slideUp(500);
		
	 });
	  $(".li1").mouseenter(function(){
	  		$(".ul1").css("margin-top","6px");
	 	$(".ul1").stop().slideDown(300);
	  		
	 });
	 	 $(".li1").mouseleave(function(){
	  		$(".ul1").css("position","absolute");
	  		$(".ul1").css("margin-top","6px");
	 	$(".ul1").finish().slideUp(500);
	 });
	   $(".li2").mouseenter(function(){
	  		$(".ul2").css("margin-top","6px");
	 	$(".ul2").stop().slideDown(300);
	  		
	 });
	 	 $(".li2").mouseleave(function(){
	  		$(".ul2").css("position","absolute");
	  		$(".ul2").css("margin-top","6px");
	 	$(".ul2").finish().slideUp(500);
	 });
 })

$(window).resize(function(){
		var allWdith = $("body").innerWidth();
	var dbodyWidth = $("#divbody").outerWidth();
	var divWidth = (allWdith - dbodyWidth) / 2;
	var erWidth  = $("#divwechat").outerWidth();
	var a =divWidth - erWidth +"px";
	if(divWidth>erWidth){
		$("#divwechat").css("right",divWidth - erWidth +'px');
	}else{
		$("#divwechat").css("right","0");
	}
})