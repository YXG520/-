<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>客户列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<h3 align="center">客户列表</h3>

<table border="1" style="margin:0px auto;">
	<tr>
		<th>客户姓名</th>
		<th>性别</th>
		<th>生日</th>
		<th>手机</th>
		<th>邮箱</th>
		<th>描述</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${customers}" var="c">
	<tr>
		<td>${c.cname}</td>
		<td>${c.gender}</td>
		<td>${c.birthday}</td>
		<td>${c.cellphone}</td>
		<td>${c.email}</td>
		<td>${c.description}</td>
		<td>
			<a href="<c:url value='/edit?cid=${c.cid}'/>">编辑</a>
			<a href="<c:url value='/delete?cid=${c.cid}'/>">删除</a>
		</td>
	</tr>
	</c:forEach>

</table>
  </body>
</html>
