<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.test.model.Tz"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/head.css"/>
<link rel="stylesheet" type="text/css" href="css/diccuz2.css"/>
</head>
<body>
<%List<Tz> tzs = (List<Tz>)request.getAttribute("tzs"); %>
		<header>
			<div>设为首页 收藏本站</div>
		</header>
		<div class="clearfix" id="block2">
			<div class="fl"><img src="./image/logo.svg" ></div>
			<div class="fr">
				<jsp:include page="header.jsp"></jsp:include>	
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
			<table cellpadding="0" cellspacing="0" >
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
		<div class="block" >
			<div style="margin-top: 7px;">
				<table>
					<tr>
						<td><div class="bftable"></div></td>
						<td><img src="image/pt_item.png" ></td>
						<td>论坛首页</td>
						<td><img src="image/pt_item.png" ></td>
						<td>Discuz! 产品动态</td>
						<td><img src="image/pt_item.png" ></td>
						<td>Discuz! 官方发布</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="block clearfix" style="border:1px solid #CDCDCD ;margin-top: 5px ;">
			<div class="fl" style="margin: 7px 0 10px 7px;">
				<ul>
					<li><a href="" class="blockhead" style=" font-size: 14px !important;">Discuz! 官方发布</a></li>
					<li>版主: monkeye, oldhu</li>
				</ul>
			</div>
			<div class="fl" >
				<table cellpadding="5px" >
					<tr>
						<td>今日:&nbsp;<span class="blockhead" style="color: red;">1</td>
						<td style="padding-left: 0; padding-top: 10px;"><img src="image/fall.png" ></td>
						<td style="padding: 0;">|</td>
						<td>主题:<span class="blockhead" style="color: red;">85</span></td>
						<td style="padding: 0;">|</td>
						<td>排名:<span class="blockhead" style="color: red;">4</span></td>
					</tr>
				</table>
			</div>
			<div class="fr" style="margin: 10px 10px 0 0;">
				<img src="image/fav.gif" style="float: left;" >
				&nbsp;收藏版本&nbsp;<span style="color: red;">(378)</span>
			</div>
		</div>
		<%int yeshu =(int)request.getAttribute("yeshu"); %>
			<%int p =(int)request.getAttribute("p"); %>
			<%int id = (int)request.getAttribute("id") ;%>
			<% int pgb =p-1;%>
			<%if(pgb==0){pgb=1;} %>
			<%int pgg =p+1; %> 
			<%if(pgg>yeshu/4+1){pgg=pgg-1;} %>
		<div class="block clearfix" style="margin-top:8px ; padding-bottom: 5px;border-bottom: 2.5px solid #CDCDCD;">
			<div class="fl" style="margin-top:5px;">
				<img src="image/pn_post.png" >
			</div>
			
			
			
			
			<div class="fr" >
				<table cellpadding="3px">
					<tr>
						<td><div class="yeshu"><img src="image/arw_l.gif" style="float: left;padding-top: 2px ;"><a href="TieServlet?smallId=<%=id%>&page=<%=pgb%>">返&nbsp;回</a></div></td>
						<%int ys = yeshu/4 +1; %>
						<%for(int i=1;i<=ys;i++) {%>
						<td><a href="TieServlet?page=<%=i%>&smallId=<%=request.getAttribute("smallId")%>"><div class="yeshu"> <%=i %> </div></a></td>
					<%} %>
						<td>
							<div class="yeshu">
								<input type="text" value="<%=p %>" style="height: 12px ; width: 25px; border: 1px solid;
																													border-color: #848484 #E0E0E0 #E0E0E0 #848484;"/>
								<%=ys %>
							</div>
						</td>
						<td><a href="TieServlet?smallId=<%=id%>&page=<%=pgg%>"><div  class="yeshu">下一页</div></a></td>
					</tr>
				</table>
				
			</div>
		</div>
		<div class="block" style="margin-bottom: 5px;">
			<div>
				<table cellpadding="5px">
					<tr>
						<td style="padding-left: 0px;"><div class="yeshu">全部</div></td>
						<td><div class="yeshu">补丁<span class="shuzi">24</span></div></td>
						<td><div class="yeshu">发布<span class="shuzi">34</span></div></td>
						<td><div class="yeshu">程序<span class="shuzi">7</span></div></td>
						<td><div class="yeshu">公告<span class="shuzi">13</span></div></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="block" style="border:1px solid #CDCDCD;">
			<div class="clearfix" style="border-bottom: 1px solid #C2D5E3;background: #F2F2F2;">
				<div class="fl"style="margin: 10px;10px;10px;10px;">全部主题&nbsp;&nbsp;最新&nbsp;&nbsp;热门&nbsp;&nbsp;热帖&nbsp;&nbsp;更多&nbsp;&nbsp;</div>
				<div class="fr" style="margin:5px 50px 5px 0px">
					<table>
						<tr>
							<td><input type="checkbox" style="margin-top:5px ;"/></td>
							<td >新窗&nbsp;</td>
							<td style="padding-right: 70px;">作者</td>
							<td>回复/查看</td>
							<td>最后发表</td>
							<td></td>
						</tr>
					</table>
				</div>
			</div>
			
			
			<%for(int i=0 ;i<tzs.size();i++){%>
			
			<div style="border-bottom: 1px solid #CDCDCD;">
			
				<table cellpadding="0" cellspacing="0">
					<tr>
						<td rowspan="2" class="rpadding lpadding"><img src="image/pin_3.gif" ></td>
						<td rowspan="2" class="rpadding"><%=tzs.get(i).getType() %></td>
						<td rowspan="2" class="rpadding"style="width: 622px;"><a href="TieziTwo?TieId=<%=tzs.get(i).getTieId()%>"><%=tzs.get(i).getTitle() %></a></td>
						
						<td ><%=tzs.get(i).getUserName() %></td>
						<td><%=tzs.get(i).getSspost() %></td>
						<td><%if(tzs.get(i).getName()==null){tzs.get(i).setName("null");} %> <%=tzs.get(i).getName() %></td>
					</tr>
					<tr>
						<td class="rpadding"style="width: 88px;"><%=tzs.get(i).getTieziTime() %></td>
						<td class="rpadding"style="width: 47px;">12414</td>
						<td><%if(tzs.get(i).getHuitieTime()==null){SimpleDateFormat z = new SimpleDateFormat("yyyy-MM-dd");String date =z.format(new Date());tzs.get(i).setHuitieTime(date);} %> <%=tzs.get(i).getHuitieTime()%></td>
					</tr>
				</table>
				
			</div>	
		<%} %>
		</div>
		<a  href="TieServlet?smallId=<%=id%>&page=<%=pgg%>"><div class="block" style="height: 30px ;line-height:30px; text-align:center ; border: 1px solid #CDCDCD; margin-top: 10px; border-radius: 3px;">
			下一页
		</div></a>
		<div class="block clearfix" style="margin-top:8px ; padding-bottom: 5px;border-bottom: 2.5px solid #CDCDCD;">
			<div class="fl" style="margin-top:5px;">
				<img src="image/pn_post.png" >
			</div>
			
			
			
			
			<div class="fr" >
				<table cellpadding="3px">
					<tr>
						<td><div class="yeshu"><img src="image/arw_l.gif" style="float: left;padding-top: 2px ;"><a href="TieServlet?smallId=<%=id%>&page=<%=pgb%>">返&nbsp;回</a></div></td>
						<%for(int i=1;i<=ys;i++) {%>
						<td><a href="TieServlet?page=<%=i%>&smallId=<%=request.getAttribute("smallId")%>"><div class="yeshu"> <%=i %> </div></a></td>
					<%} %>
						<td>
							<div class="yeshu">
								<input type="text" value="<%=p %>" style="height: 12px ; width: 25px; border: 1px solid;
																													border-color: #848484 #E0E0E0 #E0E0E0 #848484;"/>
								<%=ys %>
							</div>
						</td>
						<td><a href="TieServlet?smallId=<%=id%>&page=<%=pgg%>"><div  class="yeshu">下一页</div></a></td>
					</tr>
				</table>
				
			</div>
		</div>
		
		<form action="SendTieziServlet" method="post">
		<div class="block" style=" border: 1px solid #CDCDCD; margin-bottom: 15px;">
			<div class="block blockhead" style=" border-top: 1px solid #FFF;
				border-bottom: 1px solid #C2D5E3; padding: 10px;10px;10px;10px;background-color: #F2F2F2;width: 940px;">
				快速发帖
			</div>
			
			<input type="hidden" value="<%=request.getAttribute("smallId")%>" name="smallId">
			 <div>
					<div class="diva3_1">
							<select name="fId" style="outline: none;">
								<option value ="">选择主题分类</option>
								<option value ="1">发布</option>
								<option value ="2">修改</option>
								<option value ="3">求助</option>
								<option value ="4">展示</option>
								<option value ="5">商业</option>
							</select>
						<input type="text" name="title" id="" value="" />
						<span>还可输入 80 个字符</span>
					</div>
				<jsp:include page="editor.jsp"></jsp:include>
			<div style="margin-left: 20px;">
				验证码
				<input type="text" class="ipb"/>
				换一个
			</div>
			<div class="block clearfix" >
				<div class="fl" style="width: 60px;padding: 5px;background-color: #0000FF;color: #FFF !important;border-color: #235994;
					background-color: #06C;background-position: 0 -48px;text-align: center;margin: 10px 20px 10px 20px;"><input type="submit" value="发表帖子"></div>
					
					
				<div class="fr" style="padding: 10px 20px 10px 20px; ;">本版积分规则</div>
			</div>
		</div>
		
		</form>
		<div style=" width: 960px; margin: 0 auto; margin-top: 15px;padding-bottom:5px ; border-bottom:1px solid #CDCDCD;">
			<img src="image/222414w445cb4w4jryxc5z.png"  width="960px">
		</div>
		<div id="foot">
			<div class="clearfix block" style="width: 960px;">
				<div class="fl">Powered by Discuz! X3.3</div>
				<div class="fr">
					<table cellpadding="0" cellspacing="0">
						<tr>
							<td class="rpadding rbor">小黑屋</td>
							<td class="lpadding">Discuz! 官方站 ( 粤B2-20090059-165 ) </td>
							<td><img src="./image/star.svg" ></td>
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