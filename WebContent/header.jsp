<%@page import="java.util.List"%>
<%@page import="com.test.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%User user =(User)session.getAttribute("user") ;%>
<%if(user==null){%>
	<form action="loginServlet" method="post">
			<table cellpadding="0" cellspacing="0">
				<tr>
					<td class="rpadding rbor"><img src="image/qq_login.gif" ></td>
					<td class="lpadding">
						<select name="" id="">
							<option value="" >用户名</option>
							<option value="" >Email</option>
						</select>
					</td>
					<td class="lpadding rpadding" ><input  type="text" name="userName" onblur="checkName()"/></td>
					<td class="rpadding rbor"><input type="checkbox"/>自动登录</td>
					<td class="lpadding">找回密码</td>
				</tr>
				<tr>
					<td class="rpadding rbor" align="center">只需一步，快速开始</td>
					<td class="lpadding">密码</td>
					<td class="lpadding rpadding"><input   type="password" name="passWord" /></td>
					<td class="rpadding rbor"><input type="submit"value="登录" style="width: 75px;"></td>
					<td class="lpadding">立即注册</td>
					
				</tr>
			</table>
	</form>	
<%}else{%>
			<table cellpadding="0" cellspacing="0">
				<tr>
					<td class="lpadding">欢迎您：</td>
					<td class="lpadding rpadding" ><%=user.getName() %></td>
					
				</tr>
			</table>
	<%} %>
</body>
</html>