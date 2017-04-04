package com.edu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.entity.ExaminationItem;

@Repository
public interface ExamItemDao {

	List<ExaminationItem> findExamItem();
	
}
