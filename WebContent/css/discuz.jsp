<%@page import="com.test.model.Tiezi"%>
<%@page import="com.test.model.BigSection"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/diccss.css"/>
</head>
<body>
<%List<BigSection> bigsections = (List<BigSection>)request.getAttribute("bigsections"); %>
<%List<Tiezi> tiezis = (List<Tiezi>)request.getAttribute("tiezis"); %>
		<header>
			<div>设为首页 收藏本站</div>
		</header>
		<div class="clearfix" id="block2">
			<div class="fl"><img src="image/logo.svg" ></div>
			<div class="fr">
				<table cellpadding="0" cellspacing="0">
					<tr>
						<td class="rpadding rbor"><img src="image/qq_login.gif" ></td>
						<td class="lpadding">
							<select name="" id="">
								<option value="">用户名</option>
								<option value="">Email</option>
							</select>
						</td>
						<td class="lpadding rpadding"><input type="text"/></td>
						<td class="rpadding rbor"><input type="checkbox"/>自动登录</td>
						<td class="lpadding">找回密码</td>
					</tr>
					<tr>
						<td class="rpadding rbor" align="center">只需一步，快速开始</td>
						<td class="lpadding">密码</td>
						<td class="lpadding rpadding"><input type="password"/></td>
						<td class="rpadding rbor"><input type="button"value="登录" style="width: 75px;"></td>
						<td class="lpadding">立即注册</td>
					</tr>
				</table>	
			</div >
		</div >
		<nav id="block3">
			<a href="">论坛首页</a>
			<a href="">文档资料</a>
			<a href="">腾讯云主机</a>
			<a href="" style="width: 130px;">DISCUZ！实验室</a>
			<a href="">服务购买</a>
			<a href="">应用中心</a>
			<div class="fr">
				<select>
					<option value="">快捷导航</option>
					<option value="">1</option>
				</select>
			</div>
		</nav>
		<div style="width: 960px; height: 80px; margin: 0 auto; padding: 0;">
			<img src="image/111755u7p10v7id8c618d6.png" style="width: 100%;">
		</div>
		<div id="block4">
			<table cellpadding="0" cellspacing="0">
				<tr>
					<td style="height: 42px;width: 21px; background: url(image/search.png) no-repeat 0 -50px;"></td>
					<td style="height: 42px;width: 402px; background: url(image/search.png) repeat-x 0 -93px;">
						<input type="text" value="请输入搜索内容" style="outline: none;border: 1px solid white;"/>
					</td>
					<td style="height: 42px;width: 61px; background: url(image/search.png) no-repeat 0 -193px;">
						<select style="border: 1px solid white;display: block; margin-left: 4px;">
							<option value ="">搜索</option>
							<option value ="">用户</option>
						</select>
					</td>
					<td style="height: 42px;width: 38px; background: url(image/search.png) no-repeat 8px -142px;"></td>
				</tr>
			</table>
		</div>
		<div id="block5">
			<div class="clearfix" id="sf">
				<div class="fl" id="ssfo"></div>
				<div class="fl" id="ssft"></div>
				<div><a class="fl" id="q" href="">论坛首页</a></div>
			</div>
		</div>
		<div id="block6" class="clearfix">
			<div class="fl" id="ss">
				<table cellpadding="0" cellspacing="0"style="height: 18px;">
					<tr>
						<td class="ss6td" style="background: url(image/chart.png); width: 16px; padding: 0; border: 0;"></td>
						<td class="ss6td">今日: 8</td>
						<td class="ss6td">昨日: 60</td>
						<td class="ss6td">帖子: 11460096</td>
						<td class="ss6td">会员: 3017285</td>
						<td class="ss6td">欢迎新会员: 王会军</td>
					</tr>
				</table>
			</div>
			<div class="fr" style="color: #0000FF;">最新回复</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
<div class="section clearfix" >
		<%int count=0;%>
	<%for(int i=0;i<bigsections.size();i++){ %>
		<% count=0;%>
		<%if(i!=0) {%>
		</div>
		<%} %>
	<div class="block7head clearfix"  style="margin-top:0px";>
		<div class="fl blockhead" style="margin-top: 6px;margin-left: 10px;color: #369;"><%=bigsections.get(i).getName() %></div>
		<div class="fr" style="margin-top:7px;margin-right:10px ;"><img src="./image/2.gif" ></div>
	</div>
	 <%  for(int j=0;j<tiezis.size();j++){ %>
     <% if(bigsections.get(i).getBigId()==tiezis.get(j).getBigId()){ %>
		<%if(count==0){ %>
		<div style="margin-left: 13px; width: 960px;"class="clearfix">
		<%} %>
		<%count++;%>
			<div class="smallblock fl clearfix " >
				<div class="fl" style="margin-top:25px ;margin-left:15px ;"><img src="./image/forum.gif" ></div>
				<div class="fl" style="margin: 10px 0 10px 15px;">
					<ul>
						<li><a href="" class="blockhead" style="color: red;"><%=tiezis.get(j).getSmallsection() %></a> </li>
						<li>	
							主题：<%=tiezis.get(j).getSumpost() %>,贴数：<%=tiezis.get(j).getSspost() %>
						</li>
						<li>
							 <%=tiezis.get(j).getTitle() %><%=tiezis.get(j).getName() %><%=tiezis.get(j).getTime() %>
						</li>
					</ul>
				</div>
			</div>
			<%if(count==2 ){ %>
			</div>
			<%count=0;%>
		<%} %>
		<%} %>
	<%} %>
<%} %>
<%if (count==1){ %>
</div>	
<%} %>
	</div>		
			
			
			
			
			
			
			
			
			
			
		<div class="section">
			<div class="clearfix block8" >
				<div class="fl" style="margin: 15px 10px 10px 15px;"><img src="image/dnspod.gif" ></div>
				<div class="fl" style="margin: 10px 0 0 10px;">
					<ul>
						<li>DNSPod</li>
						<li>免费智能DNS解析服务商-电信_网通_教育网,智能DNS</li>
					</ul>
				</div>
			</div>
			<div class=" block8 clearfix">
				<div class="fl" style="margin: 15px 10px 10px 15px;"><img src="image/dnspod.gif" ></div>
				<div class="fl" style="margin: 10px 0 0 10px;">
					<ul>
						<li>DNSPod</li>
						<li>免费智能DNS解析服务商-电信_网通_教育网,智能DNS</li>
					</ul>
				</div>
			</div>
			<div style="margin: 11px 0 15px 10px;">
				手机QQ浏览器 &nbsp;&nbsp;&nbsp;&nbsp;电脑管家论坛
			</div>	
		</div>
		<div style=" width: 960px; margin: 0 auto; margin-top: 15px;padding-bottom:5px ; border-bottom:1px solid #CDCDCD;">
			<img src="image/222414w445cb4w4jryxc5z.png"  width="960px">
		</div>
		<div id="foot">
			<div class="clearfix" style="width: 960px;">
				<div class="fl">Powered by Discuz! X3.3</div>
				<div class="fr">
					<table cellpadding="0" cellspacing="0">
						<tr>
							<td class="rpadding rbor">小黑屋</td>
							<td class="lpadding">Discuz! 官方站 ( 粤B2-20090059-165 ) </td>
							<td><img src="image/star.svg" ></td>
							
						</tr>
					</table>
				</div>
			</div>
			<div class="clearfix" style="width: 960px;">
				<div class="fl">Copyright © 2001-2019 Tencent Cloud.</div>
				<div class="fr">GMT+8, 2020-3-5 15:45</div>
				
			</div>
			
		</div>
	
	</body>
</html>