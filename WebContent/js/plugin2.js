var i =0;
var aa = function(){
	if(i%2==0){
		$("#bb").css("height","64px");
		$("#cc").css("display","none");
		$("#pic1").attr("src","img/collapsed_yes.gif");
	}else{
		$("#bb").css("height","207px");
		$("#cc").css("display","block");
		$("#pic1").attr("src","img/collapsed_no.gif");
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
	}else{
		$("#divwechat").css("right","0");
	}
});
 
$(window).resize(function(){
	var allWdith = $("body").innerWidth();
	var dbodyWidth = $("#divbody").outerWidth();
	var divWidth = (allWdith - dbodyWidth) / 2;
	var erWidth  = $("#divwechat").outerWidth();
	if(divWidth>erWidth){
		$("#divwechat").css("right",divWidth - erWidth +'px');
	}else{
		$("#divwechat").css("right","0");
	}
})



