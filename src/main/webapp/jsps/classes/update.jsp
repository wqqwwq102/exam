<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
	<form action="doUpdateClasses.do" method="post">
	<input type="hidden" name="clsid" value="${classes.clsid}">
	班级名称:<input type="text" name="clsname" value="${classes.clsname}"><br/>
	班级类型:<select name="type.typeId">
		<c:forEach items="${alist}" var="al">
			<option value="${al.type.typeId}">${al.type.typeName}</option>
		</c:forEach>
	</select><br>
	班主任:<select name="headTeacher.hid">
		<c:forEach items="${alist}" var="al">
			<option value="${al.headTeacher.hid}">${al.headTeacher.hname}</option>
		</c:forEach>
	</select><br>
	讲师:<select name="teacher.tid">
		<c:forEach items="${alist}" var="al">
			<option value="${al.teacher.tid}">${al.teacher.tname}</option>
		</c:forEach>
	</select><br>
	开班时间:<input type="text" name="strartdate" value="<fmt:formatDate value="${classes.strartdate}"
					pattern="yyyy-MM-dd" />" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})"><br/>
	学习时长:<input type="text" name="studytime" value="${classes.studytime}"><br/>
	班级状态:	<select name="status">
				<option value=0>未开始</option>
				<option value=1>学习中</option>
				<option value=2>已结课</option>
			</select>
	<input type="submit" value="确认修改">
</form>
	<script src="/exam/My97DatePicker/WdatePicker.js"></script>
</body>
</html>