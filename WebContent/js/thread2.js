//$(window).scroll(function(){
//	var scrollTop = $(window).scrollTop();
//	if(scrollTop>120){
//		$("#nav1").css("position","fixed");
//		$("#nav1").css("top","0");
//	}else{
//		$("#nav1").css("position","static");
//	}
//	var scrollTop1 = $(window).scrollTop();
//	if(scrollTop1>240 && scrollTop1<2500){
//		$("#td_3-1").css("position","fixed");
//		$("#td_3-1").css("top","33px");
//		$("#td_3-1").css("marginTop","0");
//		}else if (scrollTop1>2500){
//		$("#td_3-1").css("position","static");
//		$("#td_3-1").css("marginTop","2240px");
//	}else{
//		$("#td_3-1").css("position","static");
//	}
//	var scrollTop2 = $(window).scrollTop();
//	if(scrollTop2>2720){
//		$("#td_4-1").css("position","fixed");
//		$("#td_4-1").css("top","33px");
//	}else{
//		$("#td_4-1").css("position","static");
//	}
//});
//
//$(function(){
//	var allWdith = $("body").innerWidth();
//	var dbodyWidth = $("#divbody").outerWidth();
//	var divWidth = (allWdith - dbodyWidth) / 2;
//	var erWidth  = $("#divwechat").outerWidth();
//	if(divWidth>erWidth){
//		$("#divwechat").css("right",divWidth - erWidth +'px');
//		// divwechat.style.right = divWidth - erWidth + "px";
//	}else{
//		$("#divwechat").css("right","0");
//		// divwechat.style.right = 0;
//	}
//});
// 
//$(window).resize(function(){
//		var allWdith = $("body").innerWidth();
//	var dbodyWidth = $("#divbody").outerWidth();
//	var divWidth = (allWdith - dbodyWidth) / 2;
//	var erWidth  = $("#divwechat").outerWidth();
//	var a =divWidth - erWidth +"px";
//	if(divWidth>erWidth){
//		$("#divwechat").css("right",divWidth - erWidth +'px');
//	}else{
//		$("#divwechat").css("right","0");
//	}
//})