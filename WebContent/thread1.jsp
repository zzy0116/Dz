  <%@page import="com.test.model.HuiTie"%>
<%@page import="com.test.model.TieZipage"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/head.css"/>
		<link rel="stylesheet" type="text/css" href="css/thread1.css" />
		
</head>
<body>
<% TieZipage tz = (TieZipage)request.getAttribute("tz"); %>
<% List<HuiTie> ht = (List<HuiTie>)request.getAttribute("ht"); %>
<!--顶部-->
		<div class="divtop">
			<div>
				<a href="">设为首页</a>
				<a href="">收藏本站</a>
			</div>
		</div>
		<!--顶部-->

		<!--主体框架-->
		<div class="divbody" id="divbody">
			<!--注册登录-->
			<div class="clearfix" id="block2">
			<div class="fl"><img src="image/logo.svg" ></div>
			<div class="fr">
				<jsp:include page="header.jsp"></jsp:include>
			</div >
		</div >
			<!--注册登录-->
			<nav id="nav1">
				<ul>
					<li>
						<div style="width: 86px;">
							<a href="">论坛首页</a>
						</div>
					</li>
					
					<li >
						<div style="width: 86px;">
							<a href="">文档资料</a>
						</div>
						<ul >
							<li>
								<a href="">教程</a>
							</li>
							<li style="border-bottom:none;">
								<a href="">开发文档</a>
							</li>
						</ul>
					</li>
					
					<li>
						<div style="width: 100px;">
							<a href="">腾讯云主机</a>
						</div>
					</li>
					<li>
						<div style="width: 127px;">
							<a href="">Discuz!实验室</a>
						</div>
					</li>
					
					<li>
						<div style="width: 86px;">
							<a href="">服务购买</a>
						</div>
					</li>
					<li>
						<div style="width: 86px;">
							<a href="">应用中心</a>
						</div>
						<ul >
							<li>
								<a href="">Discuz! 应用中心</a>
							</li>
							<li style="border-bottom:none;">
								<a href="">Discuz! 开放平台</a>
							</li>
						</ul>
					</li>
					
					<li>
						<div style="width: 72px;">
							<a href="">微社区</a>
						</div>
						<ul >
							<li>
								<a href="">Discuz! 打字通</a>
							</li>
							<li >
								<a href="">标准版</a>
							</li>
							<li style="border-bottom:none;">
								<a href="">本地化部署版(第三方)</a>
							</li>
						</ul>
					</li>
					
					<li>
						<div style="width: 86px;">
							<a href="">在线体验</a>
						</div>
					</li>
				</ul>
			
				<div>快捷导航</div>
			</nav>
			
			
			<div class="divscbar">
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td class="divscbar_icon_td"></td>
						<td class="divscbar_txt_td">
							<input style="width: 258px;height: 18px;border: 1px solid #FFF;outline: none;padding: 1px;color: #999;margin-left: 5px;"
							 type="text" name="" id="" value="请输入搜索内容" />
						</td>
						<td class="scbar_type_td">
							<select style="width: 61px;height: 30px;border: 1px solid #CDCDCD;color: #999;outline: none;">
								<option >帖子</option>
							</select>
						</td>
						<td class="divscbar_button_td">
							<button>
								<img src="img/btn.png">
							</button>
						</td>
						
					</tr>
				</table>
			</div>
			<div class="divscb">
				<div>
					<a href="forum.html"></a>
					<em></em>
					<a href="forum.html">论坛首页</a>
					<em></em>
					<a href="">Comsenz 公司动态</a>
					<em></em>
					<a href="">Discuz! 程序发布</a>
					<em></em>
					<a href="">Comsenz 核心产品 Discuz! X2.5 PHP7.0 特别版【2017-10 ...</a>
				</div>
			</div>
			<div class="divft">
				<div>
					<a href="plugin1.html">返回列表</a>
				</div>
				<a href="">
					<img src="img/pn_post.png">
				</a>
			</div>
			
			
			
			
			<div class="divbody_thread">
				
				<table cellpadding="0" cellspacing="0">
					<tr>
						<td class="td_1">
							<span>查看:</span>
							<span>139956</span>
							<span>|</span>
							<span>回复:</span>
							<span>0</span>
						</td>
						<td class="td_2">
							<div>
								<a href=""><img src="img/print.png"></a>
								<a href=""><img src="img/thread-prev.png"></a>
								<a href=""><img src="img/thread-next.png"></a>
							</div>
							<h1>
								<em style="color: #333;">[</em>
								<a href="" style="color:rgb(255, 165, 0);">发布</a>
								<em style="color: #333;">]</em>
								<span><%=tz.getTitle() %></span>
							</h1>
							<span>
								<a href="">[复制链接]</a>
							</span>
						</td>
					</tr>
				</table>
				<table cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td class="td_2-1"></td>
							<td class="td_2-2"></td>
						</tr>
					</tbody>
				</table>
				<div class="thread_body">
					 <table cellpadding="0" cellspacing="0">
						<tbody style="vertical-align: top;">
							<tr>
								<td class="td_3-1">
									<div id="pic1">
										<div >
											<a href=""><%=tz.getName() %></a>
										</div>
										<div >
											<a href="" ><img src="img/meimei.jpg" style="padding: 5px 5px;background: #FFF;"></a>
										</div>
									</div>
								</td>
								
								
								<td class="td_3-2">
									<div>
										<div class="div_3-2-1">
											<label>电梯直达</label>
											<input type="text" name="" id="" value="" />
											<a href="">
												<img src="img/fj_btn.png">
											</a>
										</div>
										<strong>
											<a href="">
												<font size="" color="red">楼主</font>
											</a>
										</strong>
										<div>
											<img src="img/online_admin.gif" style="vertical-align:-2px;">
											<em>
												<%=tz.getTime() %>
											</em>
											<span style="margin: 0 5px;">|</span>
											<a href="" style="color: #333;">只看该作者</a>
											<span>
												<img src="img/arw_r.gif" style="vertical-align: middle;">
											</span>
										</div>
									</div>
									
									
									<div class="bbb">
										<table>
											<tbody>
												<tr>
													<td style="font-size: 14px;">
														<%=tz.getContent() %>
														<br>
													</td>
												</tr>
											</tbody>
										</table>
										
										
										
										
										
										<dl class="diva1">
											<div >
												<div style="margin-top: 50px;">
													<b style="float: left;margin-left: 180px;font-weight: bold;">分享到: &nbsp;</b>
													<a href=""><li style="float: left;"><img src="img/qq_share.png" >
													<a href="" style="vertical-align: 3px;color: #369;">QQ好友和群 &nbsp;</a></li></a>
													<a href=""><li style="float: left;"><img src="img/qzone.gif" >
													<a href="" style="vertical-align: 3px;color: #369;">QQ空间 &nbsp;</a></li></a>
													<a href=""><li style="float: left;"><img src="img/weibo.png" >
													<a href="" style="vertical-align: 3px;color: #369;">腾讯微博 &nbsp;</a></li></a>
													<a href=""><li style="float: left;"><img src="img/pengyou.png" >
													<a href="" style="vertical-align: 3px;color: #369;">腾讯朋友 &nbsp;</a></li></a>
													<a href=""><li style="float: left;"><img src="img/share.png" >
													<a href="" style="vertical-align: 3px;color: #369;">微信 &nbsp;</a></li></a>
												</div>
												<a href="" >
													<img src="img/fav.gif"  style="vertical-align: -10px;">
													<em style="vertical-align: -6px;color: #333;">收藏</em>
													<em style="vertical-align: -6px;color: #999;">29</em>
												</a>
											</div>
										</dl>
										<dd class="diva2">
											<div>
												<div>
													<em>
														<a href="">回复</a>
													</em>
													<p>
														<a href="">使用道具</a>
														<a href="">举报</a>
													</p>
												</div>
											</div>
										</dd>
									</div>
									
								</td>
							</tr>
							<tr>
								<td class="td_2-1"></td>
								<td class="td_2-2"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<%for(int i=0;i<ht.size();i++){ %>
				<div class="thread_body2">
					<table cellpadding="0" cellspacing="0">
						<tbody style="vertical-align: top;">
							<tr class="aaaa">
								<td class="td_4">
									<div id="td_4-1">
										<div >
											<a href=""><%=ht.get(i).getName() %></a>
										</div>
										<div >
											<a href="" ><img src="img/jack.jpg" style="padding: 5px 5px;background: #FFF;"></a>
										</div>
									</div>
								</td>
								<td class="td_5" >
									<div>
										<strong>
											<a href="">
												<font size="" color="red">沙发</font>
											</a>
										</strong>
										<div>
											<img src="img/online_member.gif" style="vertical-align:-2px;">
											<em>
												<%=ht.get(i).getTime() %>
											</em>
											<span style="margin: 0 5px;">|</span>
											<a href="" style="color: #333;">只看该作者</a>
											<span>
												<img src="img/arw_r.gif" style="vertical-align: middle;">
											</span>
										</div>
									</div>
									<div><%=ht.get(i).getContent() %></div>
									<dd class="diva2" >
										<div>
											<div>
												<em>
													<a href="">回复</a>
												</em>
												<p>
													<a href="">使用道具</a>
													<a href="">举报</a>
												</p>
											</div>
										</div>
									</dd>
								</td>
								
							</tr>
							
							<tr>
								<td class="td_2-1"></td>
								<td class="td_2-2"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<%} %>
			</div>
		<div class="divft">
				<div>
					<a href="plugin1.html">返回列表</a>
				</div>
				<a href="">
					<img src="img/pn_post.png">
				</a>
			</div>
			<form action="SendHuitieServlet" method="post">
						<div class="diva3">
				<div>
					<h2>快速发帖</h2>
				</div>
				
						<input type ="hidden" name="tieid" value="<%=tz.getTieId()%>">
						<input type ="text" name = "title" id = "" value =""/>
						<jsp:include page="editor.jsp"></jsp:include>
						
						
					
					<p class="diva3_3">
						<a href="">本版积分规则</a>
						<button type="submit" >
						<strong>发表回复</strong> 
						</button> 
						
					</p>
				</div>
				</form>
			</div>
			<div class="divZZZ">
				<div>
					<p >Powered by <strong><a href="" style="font-weight: 700;color: #444;">Discuz! </a>
					</strong>
					X3.3<br><span >&copy; 2001-2017 
					<a href="" style="font-size: 5px;line-height: 1.8;color: #444;">Comsenz Inc.</a></span>
					</p>
					<div>
					<p ><a href="" >小黑屋</a><span style="margin: 0 5px;">|</span></p>
					<p ><a href="">手机版</a><span style="margin: 0 5px;">|</span></p>
					<p ><a href="">Archiver</a><span style="margin: 0 5px;">|</span></p>
					<p ><a href="" style="font-weight: 700;color: #444;">Comsenz&nbsp;</a></p>
					<p ><a href="">( 粤B2-20090059-165 )</a></p>
					<p ><a href="" style=""><img src="img/star.jpg" style="width: 89px;height: 21px;"></a></p>
					<p >GMT+8, 2019-8-29 09:00</p>
					</div>
				</div>
			</div>
			<div class="divwechat" id="divwechat">
				<img src="img/dz3mark.png">
			</div>
		</div>
	</body>
	<a name = "top"></a>
</html>