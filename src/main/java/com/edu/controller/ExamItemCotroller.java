package com.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.edu.entity.ExaminationItem;
import com.edu.entity.ExaminationSelect;
import com.edu.service.ExamItemService;

@Controller
public class ExamItemCotroller {
	@Autowired
	ExamItemService eService;
	
	@RequestMapping("listExamItem")
	public ModelAndView listExamItem(){
		List<ExaminationItem> elist = eService.findExamItem();
		for (ExaminationItem examinationitem : elist) {
			ExaminationSelect select = JSON.parseObject(examinationitem.getOption(),ExaminationSelect.class);
			examinationitem.setSelects(select);
		}
		return new ModelAndView("/jsps/examination/examination_item.jsp").addObject("elist",elist);
	}
	
}
