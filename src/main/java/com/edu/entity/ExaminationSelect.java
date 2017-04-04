package com.edu.entity;

public class ExaminationSelect {
	@Override
	public String toString() {
		return "ExaminationSelect [A=" + A + ", B=" + B + ", C=" + C + ", D="
				+ D + "]";
	}
	private String A;
	private String B;
	private String C;
	private String D;
	public String getA() {
		return A;
	}
	public void setA(String a) {
		A = a;
	}
	public ExaminationSelect() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ExaminationSelect(String a, String b, String c, String d) {
		super();
		A = a;
		B = b;
		C = c;
		D = d;
	}
	public String getB() {
		return B;
	}
	public void setB(String b) {
		B = b;
	}
	public String getC() {
		return C;
	}
	public void setC(String c) {
		C = c;
	}
	public String getD() {
		return D;
	}
	public void setD(String d) {
		D = d;
	}
	
}
