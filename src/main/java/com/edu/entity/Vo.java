package com.edu.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;



public class Vo {
	
	private String clsname;
	private String papername;
	private String examname;
	private String typename;
	private int qnumber;
	private int paperid;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createtime;
	private String hname;
	private String tname;
	private Integer status;
	private Integer typeId;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private String strartdate;
	private String choose;
	
	public int getPaperid() {
		return paperid;
	}
	public void setPaperid(int paperid) {
		this.paperid = paperid;
	}
	public int getQnumber() {
		return qnumber;
	}
	public void setQnumber(int qnumber) {
		this.qnumber = qnumber;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getExamname() {
		return examname;
	}
	public void setExamname(String examname) {
		this.examname = examname;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public String getStrartdate() {
		return strartdate;
	}
	public void setStrartdate(String strartdate) {
		this.strartdate = strartdate;
	}

	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}

	

	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getChoose() {
		return choose;
	}
	public void setChoose(String choose) {
		this.choose = choose;
	}

	public String getClsname() {
		return clsname;
	}
	public void setClsname(String clsname) {
		this.clsname = clsname;
	}
	public String getPapername() {
		return papername;
	}
	public void setPapername(String papername) {
		this.papername = papername;
	}
	
	
}
