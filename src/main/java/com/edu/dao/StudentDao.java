package com.edu.dao;

import org.springframework.stereotype.Repository;

import com.edu.entity.Student;
import com.edu.entity.User;

@Repository
public interface StudentDao {

	Student findStuByUid(User user);

}
