<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
table{border-collapse:collapse;border-spacing:0;border-left:1px solid #888;border-top:1px solid #888;background:#efefef;}
th,td{border-right:1px solid #888;border-bottom:1px solid #888;padding:5px 15px;}
th{font-weight:bold;background:#ccc;}
</style>

</head>

<body>
	<div >
	<form action="selectExamPaper.do" method="post">
	考试名称：<input id="u53" type="text" class="u53" name="examname">&nbsp
	<select id="u54" class="u54" name="typename">
	<option selected="selected">类型</option>
	<c:forEach items="${tlist}" var="t">
	<option >${t.typeName}</option>
	</c:forEach>
	
	</select>
	<input id="u55" type="submit" class="u55" value="搜索">
	</form>
	</div>
	<div>
	<input id="u56" type="submit" class="u56"  value="创建">
	</div>
	
	<div id="x">
	<table border="1" >
	<tr>
	<th>名称</th>
	<th>类型</th>
	<th>试题数量</th>
	<th>创建时间</th>
	<th>操作</th>
	</tr>
	<c:forEach items="${plist}" var="p">
	<tr>
	<td>${p.name}</td>
	<td>${p.type.typeName}</td>
	<td>${p.qnumber}</td>
	<td><fmt:formatDate value="${p.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	<td>
	<select id="${p.paperid}" class="do">
	<option selected="selected">请选择</option>
	<option id="u57" value="u57">预览</option>
	<option id="u58" value="u58">修改</option>
	<option id="u59" value="u59">删除</option>
	</select>
	</td>
	</tr>
	</c:forEach>
	</table>
	</div>
</body>
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

<script type="text/javascript">
$("#u56").click(function(){
	location ="toAddExamPaper.do"
});

$("#x").delegate("select","change",function(){
	
	$(".do").each(function(){
		var a= $(this);
	var selectId = a.val();
	if(selectId == "u57"){
		var paperid = a.attr("id");
		location = "showExamPaper.do?paperid="+paperid
	}else if(selectId == "u58"){
		var paperid = a.attr("id");
		location = "listThisExamPaper.do?paperid="+paperid
	}else if(selectId == "u59"){
		var paperid = a.attr("id");
		location = "deleteExamPaper.do?paperid="+paperid
		
	}
	});
});
</script>
</html>