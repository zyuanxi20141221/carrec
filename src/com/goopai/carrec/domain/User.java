package com.goopai.carrec.domain;

public class User {

	private String user_id;
	private String device_id;
	private String device_os;
	private String origin;
	private String car_model;
	private String gender;
	private String age_grade;
	private String job;
	private String edu_level;
	
	public User(){	
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getDevice_id() {
		return device_id;
	}
	public void setDevice_id(String device_id) {
		this.device_id = device_id;
	}
	public String getDevice_os() {
		return device_os;
	}
	public void setDevice_os(String device_os) {
		this.device_os = device_os;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getCar_model() {
		return car_model;
	}
	public void setCar_model(String car_model) {
		this.car_model = car_model;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge_grade() {
		return age_grade;
	}
	public void setAge_grade(String age_grade) {
		this.age_grade = age_grade;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getEdu_level() {
		return edu_level;
	}
	public void setEdu_level(String edu_level) {
		this.edu_level = edu_level;
	}
}
