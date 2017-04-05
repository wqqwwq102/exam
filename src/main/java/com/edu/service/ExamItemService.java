package com.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.ExamItemDao;
import com.edu.entity.ExaminationItem;
import com.edu.entity.Examinationpaper;
import com.edu.entity.Type;

@Service
public class ExamItemService {
	@Autowired
	ExamItemDao eDao;

	public List<ExaminationItem> findExamItem() {
		List<ExaminationItem> eList = eDao.findExamItem();
		return eList;
	}

	public List<ExaminationItem> listThisExamItem(int itemid) {
		List<ExaminationItem> eList =eDao.listThisExamItem(itemid);
		return eList;
	}

	public List<Type> findType() {
		List<Type> tlist = eDao.findType();
		return tlist;
	}

	public List<ExaminationItem> findExamPaper(int paperid) {
		List<ExaminationItem> eItem = eDao.findStuExamItem(paperid);
		return eItem;
	}
}
