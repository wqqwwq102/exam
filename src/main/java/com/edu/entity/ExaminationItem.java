package com.edu.entity;



public class ExaminationItem {
	
	private int itemid;
	private String title;
	private String option;
	private String answer;
	private Type type;
	private ExaminationSelect selects;
	
	public ExaminationSelect getSelects() {
		return selects;
	}
	public void setSelects(ExaminationSelect selects) {
		this.selects = selects;
	}
	public int getItemid() {
		return itemid;
	}
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	
}
