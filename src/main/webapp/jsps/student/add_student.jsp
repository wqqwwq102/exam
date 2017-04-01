<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/My97DatePicker/skin/WdatePicker.css'/>">
</head>
<body> 
班级：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select>
<option>请选择</option>
<option>..</option>
</select><br/>
姓名：&nbsp;&nbsp;<input type="text" name="stuName"><br/>
毕业院校：<input type="text" name="school"><br/>
出生年月：<input type="text" name="bithDate"><br/>
手机：&nbsp;&nbsp;<input type="text" name="phone"><br/>
进班时间：<input type="text" name="classTime" onfocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd',readOnly:true})"><br/>
&nbsp;&nbsp;<input type="hidden" value="0"><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交">
</body>
<script src="/exam_project/My97DatePicker/WdatePicker.js"></script> 
</html>