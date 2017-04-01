package com.edu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.StudentDao;
import com.edu.entity.Student;
import com.edu.entity.User;

@Service
public class StudentService {
	@Autowired
	private StudentDao studentDao;

	public Student findStuByUid(User user) {
		Student student = studentDao.findStuByUid(user);
		return student;
		
	}
}
