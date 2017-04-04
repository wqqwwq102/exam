package com.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.ExamItemDao;
import com.edu.entity.ExaminationItem;

@Service
public class ExamItemService {
	@Autowired
	ExamItemDao eDao;

	public List<ExaminationItem> findExamItem() {
		List<ExaminationItem> eList = eDao.findExamItem();
		return eList;
	}
}
