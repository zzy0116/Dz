<%@page import="com.test.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script charset="utf-8" src="kindeditor/kindeditor-all.js"></script>
<script charset="utf-8" src="kindeditor/lang/zh-CN.js"></script>
<script>
        KindEditor.ready(function(K) {
                window.editor = K.create('#editor_id',{
                	
                	uploadJson:"kindeditor/jsp/upload_json.jsp",
                	items:[
                        'forecolor', 'hilitecolor', 'bold',
                        'italic', 'underline', 'strikethrough', 'lineheight',  '|', 'image', 'multiimage',
                       'table', 'hr', 'emoticons', 
                ]	
                }
                		
                );
        });
</script>
</head>
<body>

   
					

   <%User user=(User)session.getAttribute("user");%>
    <%if(user!=null){ %>
	<div  style="margin-left:19px;">
	<textarea id="editor_id" name="content" style="width:750px;height:130px;">
	
	</textarea>
	</div>
	<%} else{%>
	<div style="margin-left: 19px;"><img src="image/)GEEO6KEK2Y%5D%60RN6V8ZNGPS.png" ></div>
	<%} %>
</body>
</html>