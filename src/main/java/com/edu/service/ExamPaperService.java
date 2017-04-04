package com.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.ExamPaperDao;
import com.edu.entity.Examinationitem;
import com.edu.entity.Examinationpaper;
import com.edu.entity.Type;
import com.edu.entity.Vo;
@Service
public class ExamPaperService {
	@Autowired
	private ExamPaperDao exampaperdao;
	
	public List<Examinationpaper> listExamPaper() {
		List<Examinationpaper> plist = exampaperdao.listExamPaper();
		return plist;
	}

	public List<Type> listTypename() {
		List<Type> tlist = exampaperdao.listTypename();
		return tlist;
	}

	public List<Examinationpaper> selectExamPaper(Vo vo) {
		List<Examinationpaper> plist = exampaperdao.selectExamPaper(vo);
		return plist;
	}

	public Integer findTypeid(Vo vo) {
		Integer typeid = exampaperdao.findTypeid(vo);
		return typeid;
	}

	public void addExamPaper(Vo vo) {
		List<Integer> items = exampaperdao.findItemId(vo);
		exampaperdao.addExamPaper(vo);
		int paperid = exampaperdao.findPaperId(vo);
		for (Integer item : items) {
			exampaperdao.addPaperAndItem(item,paperid);
		}
	}

	public Examinationpaper listThisExamPaper(int paperid) {
		Examinationpaper exam = exampaperdao.listThisExamPaper(paperid);
		return exam;
	}

	public void updateExamPaper(Vo vo) {
		exampaperdao.updateExamPaper(vo);
		
	}

	public Integer findTypeId(Vo vo) {
		Integer typeid = exampaperdao.findTypeId(vo);
		return typeid;
	}

	public void deleteExamPaper(int paperid) {
		exampaperdao.deleteExamPaper(paperid);
		
	}

	public List<Examinationitem> showExamPaper(Examinationpaper exam) {
		List<Examinationitem> list = exampaperdao.showExamPaper(exam);
		return list;
	}

	

}
