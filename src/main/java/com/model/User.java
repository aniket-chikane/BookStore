package com.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int Uid;
	private String Uname;
	private String Umob;
	private String Udob;
	private String Ugender;
	private String pass;
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}

	public String getUmob() {
		return Umob;
	}
	public void setUmob(String umob) {
		Umob = umob;
	}
	public String getUdob() {
		return Udob;
	}
	public void setUdob(String udob) {
		Udob = udob;
	}
	public String getUgender() {
		return Ugender;
	}
	public void setUgender(String ugender) {
		Ugender = ugender;
	}

}
