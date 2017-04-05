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
		<input type="hidden" value="${exam.paperid}" id="paperid">
		<c:forEach items="${exam.examitem}" var="e" varStatus="a">
		<div class="container bottom-padding" id="itemid${e.itemid}">
			<div class="question-title">
				<h4><span>${a.index+1}. </span>${e.title }</h4>
			</div>
			<div class="option-div">
			<input type="hidden" value="itemid${e.itemid}" id="itemid">
				<div class="radio">
				  <label>
				    <input type="radio" name="itemid${e.itemid}" id="optionsRadios1" value="A"> 
				     A.${e.selects.slectA }
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="itemid${e.itemid}" id="optionsRadios2" value="B">
				    B.${e.selects.slectB }
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="itemid${e.itemid}" id="optionsRadios3" value="C" >
				    C.${e.selects.slectC }
				  </label>
				</div>
				<div class="radio">
				  <label>
				    <input type="radio" name="itemid${e.itemid}" id="optionsRadios3" value="D" >
				   D.${e.selects.slectD }
				  </label>
				</div>
			</div>
		</div>	
	</c:forEach>
		
			<button class="btn btn-primary btn-lg btn-longer" id="submitExam">交 卷</button>
	
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
	<script type="text/javascript">
		var a = new Array(); 
		var i=0;
		$("#submitExam").click(function(){
			var paperid=$("#paperid").val();
			$(".bottom-padding").each(function(){
				var radioname = $(this).attr("id");
				var b = $("input:radio[name="+radioname+"]:checked").val();
				a[i++]=b;
			});
			location = "/exam/doSubmitpaper.do?paperid="+paperid+"&stuAnswer="+a;
		});
	</script>
</body>
</html>

