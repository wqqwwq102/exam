<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	  <div class="container">
	    <h2>考试倒计时 : <small id="exam-time"></small></h2>
	  </div>
	</nav>

		<form action="">
		<div class="container bottom-padding">
		<c:forEach items="${exam.examitem}" var="e" varStatus="a">
			<div class="question-title">
				<h4><span>${a.index+1}. </span>${e.title }</h4>
			</div>
			<div class="option-div">
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
				     A.${e.selects.slectA }
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				    B.${e.selects.slectB }
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				    C.${e.selects.slectC }
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
				   D.${e.selects.slectD }
				  </label>
				</div>
			</div>
			
	</c:forEach>
		</div>
			<button class="btn btn-primary btn-lg btn-longer">交 卷</button>
		</form>
	
	<script src="http://cdn.bootcss.com/jquery/1.8.3/jquery.min.js"></script>
	<script>
		var examMinutes = 30;//以分钟为单位, 这个值应该是后台算好放到页面上的.
		var seconds = 0;//初始化秒数
		var timer = setInterval(function(){
			if(seconds <= 0){
				examMinutes--;
				seconds = 60;
			}
			if(examMinutes < 0){
				clearInterval(timer);
				return;
			}
			seconds--;
			$("#exam-time").text(examMinutes+"分"+seconds+"秒");
		},1000);
	</script>
</body>
</html>

