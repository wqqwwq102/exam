<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理</title>
</head>
<body>
<div>
<select>
<option >班级</option>
<option>..</option>
</select>
姓名：<input type="text" name="stuName" >
毕业院校：<input type="text" name="school" >
出生年月：<input type="text" name="bithDate" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm',readOnly:true})">
<select>
<option>状态</option>
<option>..</option>
</select>
<input type="submit" value="搜索">
<input id="u56" type="submit" value="添加">
</div>
<div>
<table border="1">
<tr>
<th>姓名</th>
<th>毕业院校</th>
<th>出生年月</th>
<th>手机</th>
<th>进班时间</th>
<th>状态</th>
<th>操作</th>
</tr>
<tr>
<td>赵泽中</td>
<td>清华大学</td>
<td>1991-01-01</td>
<td>13876124523</td>
<td>2016-07-06</td>
<td>学习中</td>
<td>
<select>
<option selected value="请选择">请选择</option>
<option>..</option>
</select>
</td>
</tr>
</table>
</div>
</body>
<script src="//cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
<script src="/exam_project/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript">
$("#u56").click(function(){
	location ="/exam_project/jsps/student/add_student.jsp"
});
</script>
</html>