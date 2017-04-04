<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body>
<form action="updateExamPaper.do" method="post">
<div>

类型：<select name="typename" id="typename">
<c:forEach items="${tlist}" var="t">
<c:if test="${t.typeName == exam.type.typeName}">
<option selected="selected">${t.typeName}</option>
</c:if>
<option >${t.typeName}</option>
</c:forEach>
</select><br/>

<input type="hidden" name="paperid" value="${exam.paperid}">
试卷名称：<input type="text" name="papername" value="${exam.name}"><br/>
试题数量：<input type="text" name="qnumber" value="${exam.qnumber}"><br/>
创建时间：<input type="text" name="createtime" value='<fmt:formatDate value="${exam.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>' onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})"><br/>


<input type="submit" value="提交">
</div>
</form>
</body>
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script src="/exam/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript">

</script>
</html>