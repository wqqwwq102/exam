package com.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.ClassesDao;
import com.edu.entity.Classes;
import com.edu.entity.Vo;

@Service
public class ClassesService {
	@Autowired
	private ClassesDao classesDao;

	public List<Classes> findClass() {
		List<Classes> clist = classesDao.findClass();
		return clist;
	}

	public void addClass(Classes classes) {
		classesDao.addClass(classes); 
		
	}

	public List<Classes> findClassByinfo(Vo vo) {
		List<Classes> clist = classesDao.findClassByinfo(vo);
		return clist;
	}

	public Classes findClassByCid(int clsid) {
		Classes classes = classesDao.findClassByCid(clsid);
		return classes;
	}

	public void updateClasses(Classes classes) {
		classesDao.updateClasses(classes);
		
	}

	public void studying(int clsid) {
		
		classesDao.studying(clsid);
	}

	public void overClass(int clsid) {
		classesDao.overClass(clsid);		
	}

	
	
}
