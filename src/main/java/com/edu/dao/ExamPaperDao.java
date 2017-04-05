package com.edu.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.edu.entity.ExaminationItem;
import com.edu.entity.Examinationpaper;
import com.edu.entity.Type;
import com.edu.entity.Vo;
@Repository
public interface ExamPaperDao {

	List<Examinationpaper> listExamPaper();

	List<Type> listTypename();

	List<Examinationpaper> selectExamPaper(Vo vo);

	Integer findTypeid(Vo vo);

	void addExamPaper(Vo vo);

	Examinationpaper listThisExamPaper(int paperid);

	Integer findTypeId(Vo vo);

	void updateExamPaper(Vo vo);

	void deleteExamPaper(int paperid);

	List<ExaminationItem> showExamPaper(Examinationpaper exam);

	List<Integer> findItemId(Vo vo);

	int findPaperId(Vo vo);

	void addPaperAndItem(Integer item, int paperid);

	int findStuPaperId(int eid);

	

}
