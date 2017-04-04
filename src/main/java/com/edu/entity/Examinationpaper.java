package com.edu.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Examinationpaper {

	private int paperid;
	private String name;
	private Type type;
	private String typename;
	private List<Examinationitem> examitem;
	private int qnumber;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createtime;
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	
	public int getQnumber() {
		return qnumber;
	}
	public void setQnumber(int qnumber) {
		this.qnumber = qnumber;
	}
	public int getPaperid() {
		return paperid;
	}
	public void setPaperid(int paperid) {
		this.paperid = paperid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	
	public List<Examinationitem> getExamitem() {
		return examitem;
	}
	public void setExamitem(List<Examinationitem> examitem) {
		this.examitem = examitem;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	
}
