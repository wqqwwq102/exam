package com.edu.dao;

import java.util.List;

import com.edu.entity.ExaminationItem;

public interface TestDao {
	public List<ExaminationItem> findExamItem(int itemid);
}
