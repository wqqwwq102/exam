package com.edu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.entity.ExaminationItem;
import com.edu.entity.Type;

@Repository
public interface ExamItemDao {

	List<ExaminationItem> findExamItem();

	List<ExaminationItem> listThisExamItem(int itemid);

	List<Type> findType();

	List<ExaminationItem> findExamPaper(int paperid);

	List<ExaminationItem> findStuExamItem(int paperid);
	
}
