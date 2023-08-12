package com.ex.model;

public class Student {
	
	private int student_rollno;
	private String student_fname;
	private String student_lname;
	private String student_email;
	private float student_percentage;
	
	public int getStudent_rollno() {
		return student_rollno;
	}
	public void setStudent_rollno(int student_rollno) {
		this.student_rollno = student_rollno;
	}
	public String getStudent_fname() {
		return student_fname;
	}
	public void setStudent_fname(String student_fname) {
		this.student_fname = student_fname;
	}
	public String getStudent_lname() {
		return student_lname;
	}
	public void setStudent_lname(String student_lname) {
		this.student_lname = student_lname;
	}
	public String getStudent_email() {
		return student_email;
	}
	public void setStudent_email(String student_email) {
		this.student_email = student_email;
	}
	public float getStudent_percentage() {
		return student_percentage;
	}
	public void setStudent_percentage(float student_percentage) {
		this.student_percentage = student_percentage;
	}
	
	@Override
	public String toString() {
		return "Student [student_rollno=" + student_rollno + ", student_fname=" + student_fname + ", student_lname="
				+ student_lname + ", student_email=" + student_email + ", student_percentage=" + student_percentage
				+ "]";
	}
	
}
