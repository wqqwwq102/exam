<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试列表</title>
<style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
</style>
</head>
<body>
	<table>
		<tr>
			<th>编号</th>
			<th>考试名称</th>
			<th>班级名称</th>
			<th>开始时间</th>
			<th>结束时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${exams}" var="e" varStatus="a">
		<tr>
			<td>${a.index+1}</td>
			<td>${e.ename}</td>
			<td>${e.clsname }</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${e.starttime }"/></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${e.endtime }"/></td>
			<td>
			<div align="center">
				<form action="<c:url value='/listStuExamItem.do'/>" method="post">
					<input type="hidden" value="${e.eid}" name="eid">
					<input type="submit" value="开始考试">
				</form>
				</div>
			</td>
		</tr>
		</c:forEach>
		</table>
</body>
</html>