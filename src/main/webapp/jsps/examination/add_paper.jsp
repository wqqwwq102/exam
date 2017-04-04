<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
<form action="addExamPaper.do" method="post">
<div>

试卷名称：<input type="text" name="papername" ><br/>
试卷类型：<select name="typename">
<option selected="selected">请选择</option>
<c:forEach items="${tlist}" var="t">
<option>${t.typeName}</option>
</c:forEach>
</select><br/>
题目数量：<input type="text" name="qnumber" ><br/>
创建时间：<input type="text" name="createtime" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})"><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交">

</div>
</form>
</body>
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script src="/exam/My97DatePicker/WdatePicker.js"></script> 

</html>