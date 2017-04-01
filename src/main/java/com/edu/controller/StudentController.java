package com.edu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.entity.Student;
import com.edu.entity.User;
import com.edu.service.StudentService;

/**
 * @author 14
 * 该controller是为了处理学生登陆后的请求
 *
 */
@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("find")
	public ModelAndView listStuInfo(HttpSession session){
		User user = (User) session.getAttribute("sessionuser");
		Student student = studentService.findStuByUid(user);
		ModelAndView mv = new ModelAndView("/jsps/student/student.jsp");
		mv.getModel().put("stu", student);
		return mv;
	}
}
