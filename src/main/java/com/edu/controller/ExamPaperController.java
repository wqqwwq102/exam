package com.edu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.edu.entity.Examinationitem;
import com.edu.entity.Examinationpaper;
import com.edu.entity.Type;
import com.edu.entity.Vo;
import com.edu.service.ExamPaperService;
@Controller
public class ExamPaperController {
	@Autowired
	private ExamPaperService expaperService;
	@RequestMapping("listExamPaper")
	public ModelAndView listExamPaper(){
		List<Examinationpaper> plist = expaperService.listExamPaper();
		List<Type> tlist = expaperService.listTypename();
		return new ModelAndView("/jsps/examination/examination_paper.jsp").addObject("plist", plist).addObject("tlist", tlist);
	}
	
	
	@RequestMapping("selectExamPaper")
	public ModelAndView selectExamPaper(Vo vo){
		if(vo.getExamname() != null && !vo.getExamname().equals("")){
			vo.setExamname("%"+vo.getExamname()+"%");
		}
		List<Examinationpaper> plist = expaperService.selectExamPaper(vo);
	return new ModelAndView("/jsps/examination/examination_paper.jsp").addObject("plist", plist);	
	}
	@RequestMapping("toAddExamPaper")
	public ModelAndView toAddExamPaper(){
		List<Type> tlist = expaperService.listTypename();
		return new ModelAndView("/jsps/examination/add_paper.jsp").addObject("tlist", tlist);
	}
	@RequestMapping("addExamPaper")
	public ModelAndView addExamPaper(Vo vo){
		Integer typeid =  expaperService.findTypeid(vo);
		vo.setTypeId(typeid);
		expaperService.addExamPaper(vo);
		return new ModelAndView("listExamPaper.do");
	}
	
	
	@RequestMapping("listThisExamPaper")
	public ModelAndView listThisExamPaper(int paperid){
		Examinationpaper exam = expaperService.listThisExamPaper(paperid);
		List<Type> tlist = expaperService.listTypename();
		return new ModelAndView("/jsps/examination/update_examPaper.jsp").addObject("exam", exam).addObject("tlist", tlist);	
	}
	
	
	@RequestMapping("updateExamPaper")
	public ModelAndView updateExamPaper(Vo vo){
		Integer typeid = expaperService.findTypeId(vo);
		vo.setTypeId(typeid);
		expaperService.updateExamPaper(vo);
		return new ModelAndView("listExamPaper.do");
	}
	
	
	@RequestMapping("deleteExamPaper")
	public ModelAndView deleteExamPaper(int paperid){
		expaperService.deleteExamPaper(paperid);
		return new ModelAndView("listExamPaper.do");
	}
	
	
	@RequestMapping("showExamPaper")
	public ModelAndView showExamPaper(int paperid){
		Examinationpaper exam = expaperService.listThisExamPaper(paperid);
		Vo vo = new Vo();
		List<Examinationitem> list = expaperService.showExamPaper(exam);
		exam.setExamitem(list);
		return new ModelAndView("/jsps/examination/show_examPaper.jsp").addObject("list", list);
	}
}
