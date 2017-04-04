<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;font-size: 8px}
th{font-weight:bold;background:#ccc;}
</style>
</head>

<body>
	<form action="selectExam.do">
	<div >
	
	<select id="u53" class="u53" name="clsname">
	<option selected value="">班级</option>
	<c:forEach items="${clist}" var="c">
	<option>${c.clsname}</option>
	</c:forEach>
	</select>
	
	<select id="u54" class="u54" name="papername">
	<option selected value="">试卷</option>
	<c:forEach items="${plist}" var="p">
	<option>${p.name}</option>
	</c:forEach>
	</select>
	<input id="u55" type="submit" class="u55" value="搜索">
	<input id="u56" type="button" class="u56" value="创建">
	</div>
	</form>
	<div id="x">
	<table border="1" >
	<tr>
	<th>名称</th>
	<th>班级</th>
	<th>开始时间</th>
	<th>结束时间</th>
	<th>操作</th>
	</tr>
	<c:forEach items="${elist}" var="e">
	<tr>
	<td>${e.ename}</td>
	<td>${e.clsname}</td>
	<td><fmt:formatDate value="${e.starttime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	<td><fmt:formatDate value="${e.endtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	<td>
	<select id="${e.eid}" class="do" >
	<option selected >请选择</option>
	<option id="u57" value="u57">修改</option>
	<option  id="u58"  value="u58">删除</option>
	</select>
	</td>
	</c:forEach>
	</tr>
	</table>
	</div>
</body>
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
$("#u56").click(function(){
	location ="listClasses.do"
});

$("#x").delegate("select","change",function(){
	
	$(".do").each(function(){
		var a= $(this);
	var selectId = a.val();
	if(selectId == "u57"){
		var eid = a.attr("id");
		location = "listThisExam.do?eid="+eid
	}else if(selectId == "u58"){
		var eid = a.attr("id");
	location = "deleteExam.do?eid="+eid
	}
	});
});

</script>
</html>