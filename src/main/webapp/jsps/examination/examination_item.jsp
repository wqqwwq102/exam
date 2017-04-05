<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>试题管理</title>
	<style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
</style>
</head>
<body>
	<form action="searchItem.do" method="get">
		题目：<input type="text" name="title">
		类型：<select>
		<c:forEach items="${tlist}" var="t">
			<option value = ${t.typeId }>${t.typeName}</option>
		</c:forEach>
		</select>
	</form>
	<table>
		<tr>
			<th>题目</th>
			<th>选项A</th>
			<th>选项B</th>
			<th>选项C</th>
			<th>选项D</th>
			<th>答案</th>
			<th>类型</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${elist}" var="i">
		<tr>
			<td>${i.title}</td>
			<td>A.${i.selects.slectA}</td>
			<td>B.${i.selects.slectB}</td>
			<td>C.${i.selects.slectC}</td>
			<td>D.${i.selects.slectD}</td>
			<td>${i.answer}</td>
			<td>${i.type.typeName }</td>
			<td>
				<select>
					<option selected="selected">请选择</option>
					<option>修改</option>
					<option>删除</option>
				</select>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>