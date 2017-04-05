<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>考试</title>
	<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<style>
		body{
			font-family: '微软雅黑';
			padding-top: 50px;
		}
		h2{
			margin:0;
			line-height: 49px;
		}
		.question-title{
			margin-bottom: 20px;
		}
		.option-div{
			padding-left: 20px;
		}
		.option-div .radio{
			margin-bottom: 15px;
		}
		.btn-longer{
			width: 155px;
		}
		.container.bottom-padding{
			padding-bottom: 20px;
		}
	</style>
</head>
<body>

	<div class="container bottom-padding">
	<form action="">
		<c:forEach items="${exam.examitem}" var="ex">
			<div class="question-title">
			题目：<input type="text" name="title" value="${ex.title}"> 
				
			</div>
			<div class="option-div">
				
			A.<input type="text" name="optionsRadios1"  value="${ex.selects.slectA}"><br/>
			B.<input type="text" name="optionsRadios2"  value="${ex.selects.slectB}"><br/>
			C.<input type="text" name="optionsRadios3"  value="${ex.selects.slectC}"><br/>	
			D.<input type="text" name="optionsRadios4"  value="${ex.selects.slectD}"><br/>	
				
			答案：<input type="text" name="answer">
				
			</div>
			
			</c:forEach>
			<input type="submit" value="提交">
			</form>
			</div>


</body>
</html>

