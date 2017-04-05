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
		<c:forEach items="${exam.examitem}" var="ex" varStatus="a">
			<div class="question-title">
				<h4><span>${a.index+1}.${ex.title}</span></h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="answer" id="optionsRadios1" value="option1">
				  A. ${ex.selects.slectA}
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="answer" id="optionsRadios2" value="option2">
				   B. ${ex.selects.slectB}
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="answer" id="optionsRadios3" value="option3">
				 C. ${ex.selects.slectC}
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="answer" id="optionsRadios4" value="option4">
				   D. ${ex.selects.slectD}
				  </label>
				</div>
			</div>
			<hr>
			</c:forEach>
			</div>


</body>
</html>

