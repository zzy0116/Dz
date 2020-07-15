<%@page import="com.test.model.Tiezi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href=" css/head.css"/>
		<link rel="stylesheet" type="text/css" href=" css/three.css"/>
		<link rel="stylesheet" href=" css/second.css">
</head>
<body>
	
		<div id="unhead" class="clearfix">
			<div class="fl">
				<img src=" img/logo.png" alt="">
			</div>	
		<div class="fr">
			<table cellspacing="0">
				<tr>
					<td style="padding-right: 10px;    border-right: 1px solid #CDCDCD;" >
						<img src=" img/qq_login.gif" alt="">
					</td>
					<td style="padding-left: 10px;">
					<select name="" id="">
						<option value="">用户名</option>
						<option value="">Email</option>
					</select>
					</td>
					<td class="rpadding">
						<input type="text">
					</td>
					<td class="rpadding rbor">
						<input type="checkbox">自动登录
					</td>
					<td class="lpadding">
						找回密码
					</td>
				</tr>
				<tr>
					<td style="padding-right: 10px;    border-right: 1px solid #CDCDCD;">只需一步,快速开始</td>
					<td style="padding-left: 10px;">密码</td>
					<td class="rpadding">
						<input type="text">
					</td>
					<td class="rpadding rbor">
						<input type="button"value="登录"style="width: 75px;">
					</td>
					<td class="lpadding">
						立即注册
					</td>
					
				</tr>
			</table>
			</div>
			</div>
			<div id="nav">
				<nav>
					<a href="">论坛首页</a>
					<a href="">文档资料</a>
					<a href="">腾讯云主机</a>
					<a href="">Discuz!实验室</a>
					<a href="">服务购买</a>
					<a href="">应用中心</a>
					<a href=""style="float: right;">快捷导航</a>
					
				</nav>
			</div>
			<div id="nr">
				<img src=" img/111755u7p10v7id8c618d6%20(1).png" height="80px" font-weight:400>
			</div>
		<div id="br">
			<div class="dr">
				
			</div>
			<div class="cr">
				
			</div>
			<div class="ar">
				
			</div>
			<div class="er">
				
			</div>
		</div>
		<div id="a">
			<div class="z">
				
			</div>
			<div class="b" >
				
			</div>
			
			<div class="y">
				<a href="">论坛首页 </a>
			</div>
		</div>
		<!-- 副主题 -->
		<div id="mn">
		<% Tiezi tiezi =(Tiezi) request.getAttribute("tiezi"); %>
			<div style="" class="clearfix">
				
				<div class="fl"style="padding: 5px ;">
					<ul>
						<li>
							<h2>
								<a href=""style="font-weight: bold;font-size: 14px;">Discuz! 官方发布</a>
								<a href=""style="margin-left: 15px;padding-right: 10px;    border-right: 1px solid #CDCDCD;">今日：<%%></a>&nbsp;
								<a href=""style="padding-right: 10px;    border-right: 1px solid #CDCDCD;">主题：<% %></a>&nbsp;
								<a href="">排名：</a>&nbsp;
							</h2>
							
							
						</li>
						<li>版主: monkeye, oldhu</li>
						<li></li>
					</ul>
				</div>
				
				<div class="fr"style="margin-top: 5px;float: right;">
					<ul>
						<li>
							<a href=""style="font-size: 12px;">收藏本版（378）</a>
							
							</li>
					</ul>
				</div>
				
			</div>
			
		</div>
		<!-- 副主题end -->
		<!-- 发帖图片 -->
		<div id="uu" >
			
			<img src=" img/pn_post.png">
			
			
						
		</div>
		<!-- 以上头部 -->
		<div  id="section">
		<div class="hea">
		   <a href="" style="padding-left:15px ;">全部主题</a> 
		   <a href="">最新</a>
		   <a href="">热门</a>
		   <a href="">热帖</a>
		   <a href="">精华</a>
		   <a href="">更多</a>
		</div>
		<!-- 帖子 -->
		<div class="tie">
			<table cellpadding="0"cellspacing="0" height="38px">
				<tr>
					<td rowspan="2" style="width: 670px;">
					<img src=" img/pin_3.gif" style="float: left;margin-right: 5px;">
					<a href="">[公告]</a>
					<a href=""style="color: rgb(102, 102, 102);"> Discuz! 官方公众号恢复运营了，请关注</a>
					<img src=" img/image_s.gif" alt="">
                    <a href="">...</a>					
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
					<a href="">5</a>	
					</td>
					<td style="width: 105px;color: red;border: 0px;font-size: 12px;">xy60cn</td>
					<td style="width: 60px;color:blue;border: 0px;font-size: 12px;">51</td>
					<td style="width: 105px;border: 0px;font-size: 12px;">52yyzw</td>
				</tr>
				<tr>
					
					<td style="font-size: 12px;">2020-2-11</td>
					<td style="font-size: 12px;">13781</td>
					<td style="font-size: 12px;" >6天前</td>
				</tr>
			</table>
			
			
		</div>
		<!-- 帖子end -->
		<!-- 帖子 -->
		<div class="tie">
			<table cellpadding="0"cellspacing="0" height="38px">
				<tr>
					<td rowspan="2" style="width: 670px;">
					<img src=" img/pin_3.gif" style="float: left;margin-right: 5px;">
					
					<a href=""style="color: rgb(60, 157, 64);">这个时代，你需要怎样的论坛/社区呢 ？</a>
					<img src=" img/011.small.gif" alt="">
					<img src=" img/digest_1.gif" alt="">
		            <a href="">...</a>					
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
					<a href="">5</a>	
					</td>
					<td style="width: 105px;color: red;border: 0px;font-size: 12px;">xy60cn</td>
					<td style="width: 60px;color:blue;border: 0px;font-size: 12px;">355</td>
					<td style="width: 105px;border: 0px;font-size: 12px;">qushiand</td>
				</tr>
				<tr>
					
					<td style="font-size: 12px;">2019-11-24</td>
					<td style="font-size: 12px;">77090</td>
					<td style="font-size: 12px;">前天00:31</td>
				</tr>
			</table>
		</div>
		<!-- 帖子end -->
		<!-- 帖子 -->
		<div class="tie">
			<table cellpadding="0"cellspacing="0" height="38px ">
				<tr>
					<td rowspan="2" style="width: 670px;">
					<img src=" img/pin_3.gif" style="float: left;margin-right: 5px;">
					<a href="">[公告]</a>
					<a href=""style="color: red;"> 『2019』Discuz!官方团队招聘中</a>
					<img src=" img/011.small.gif" alt="">
		            <a href="">...</a>					
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
					<a href="">5</a>	
					</td>
					<td style="width: 105px;color: red;border: 0px;font-size: 12px;">声仔</td>
					<td style="width: 60px;color:blue;border: 0px;font-size: 12px;">49</td>
					<td style="width: 105px;border: 0px;font-size: 12px;">haochi</td>
				</tr>
				<tr>
					
					<td style="font-size: 12px;">2019-7-3</td>
					<td style="font-size: 12px;">139123</td>
					<td style="font-size: 12px;">2020-2-21 00:16</td>
				</tr>
			</table>
		</div>
		<!-- 帖子end -->
		</div>
		<!-- 尾巴 -->
		<div id="seb">
			<a href=""style="font-size: 12px;margin-right: 5px;">下一页<<</a>
		</div>
</body>
</html>