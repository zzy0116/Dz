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
		divwechat.style.right = divWidth - erWidth + "px";
	}else{
		divwechat.style.right = 0;
	}
});

$(window).resize(function(){
	var allWdith = $("body").innerWidth();
	var dbodyWidth = $("#divbody").outerWidth();
	var divWidth = (allWdith - dbodyWidth) / 2;
	var erWidth  = $("#divwechat").outerWidth();
	if(divWidth>erWidth){
		divwechat.style.right = divWidth - erWidth + "px";
	}else{
		divwechat.style.right = 0;
	}
});
			var yes = function() {
				$("#divZYXZ").css("display","none");
			}
			var no = function() {
				location.href = "forum.html";
			}
			
			var count = 0;
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
				var yqm = $("#yqm");
				var syqm = yqm.next();
				var username = $("#username");
				var susername =username.next();
				var password = $("#password");
				var spassword = password.next();
				var con_password = $("#con_password");
				var scon_password = con_password.next();
				var email = $("#email");
				var semail = email.next();
				
				yqm.focus(function(){
					syqm.html("联系 QQ : 10086 , 发送 邀请码 免费获取");
					syqm.css("color","black");
					// $(this).addClass("textred");
					this.className = 'textred';
				});
				
				yqm.blur(function(){
					var regyqm = /^[0-9_]{3,6}$/;
					// var yqmval = this.value;
					var yqmval = $(this).val();
					if(regyqm.test(yqmval)){
						syqm.html("<img src='img/accept.png' />");
						this.className = 'textred';
						yqm.css("background","rgb(243,245,181)");
							}else{
								syqm.html("");
								count++;
						}
				});
				username.focus(function(){
					susername.html("用户名由3-15个字符组成");
					susername.css("color","red");
					// $(this).addClass("textred");
					this.className = 'textred';
				});
				username.blur(function(){
					var regusername = /^\w{3,15}$/;
					// var userval = this.value;
					var userval = $(this).val();
					if(regusername.test(userval)){
						susername.html("<img src='img/accept.png' />");
						this.className = 'textred';
						username.css("background","rgb(243,245,181)");
					}else{
							susername.html("用户名不得小于3个字符");
							susername.className ="err";
							this.className = 'textred bred';
							count++;
				    }
			    });
				password.focus(function(){
					spassword.html("请填写密码，最小长度为6个字符");
					spassword.css("color","red");
					// $(this).addClass("textred");
					this.className = 'textred';
				});
				password.blur(function(){
					var regpassword = /^[0-9a-zA-Z_]{6,15}$/;
					// var passval = this.value;
					var passval = $(this).val();
					if(regpassword.test(passval)){
						spassword.html("<img src='img/accept.png' />");
						this.className = 'textred';
						password.css("background","rgb(243,245,181)");
					}else{
							spassword.html("密码不得小于6个字符");
							spassword.className ="err";
							this.className = 'textred ';
							count++;
				    }
				});
				
				con_password.focus(function(){
					scon_password.html("请再次输入密码");
					scon_password.css("color","red");
					// $(this).addClass("textred");
					this.className = 'textred';
				});
				con_password.blur(function(){
					var regcon_password = /^[0-9a-zA-Z_]{6,15}$/;
					// var con_passval = this.value;
					var con_passval = $(this).val();
					if(regcon_password.test(con_passval)){
						scon_password.html("<img src='img/accept.png' />");
						this.className = 'textred';
						con_password.css("background","rgb(243,245,181)");
					}else{
							scon_password.html("密码不得小于6个字符");
							scon_password.className ="err";
							this.className = 'textred ';
							count++;
				    }
				});
				email.focus(function(){
					semail.html("邮箱由8-20个字符组成");
					semail.css("color","red");
					// $(this).addClass("textred");
					this.className = 'textred';
				});
				email.blur(function(){
				var regemail = /^\w{8,20}$/;
				// var emaval = this.value;
				var emaval = $(this).val();
				if(regemail.test(emaval)){
					semail.html("<img src='img/accept.png' />");
					// this.className = 'textred';
					$(this).addClass("textred");
					email.css("background","rgb(243,245,181)");
				}else{
						semail.html("邮箱不得小于8个字符");
						// semail.className ="err";
						semail.addClass("err");
						// this.className = 'textred ';
						$(this).addClass("textred");
						count++;
					}
				});
			});