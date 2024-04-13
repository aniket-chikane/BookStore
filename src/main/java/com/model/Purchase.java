package com.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Purchase {
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int counts;
	private String BPdate;
	private int Uid;
	private int bid;
	private String Address;
	
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBPdate() {
		return BPdate;
	}
	public void setBPdate(String bPdate) {
		BPdate = bPdate;
	}
	public int getCounts() {
		return counts;
	}
	public void setCounts(int counts) {
		this.counts = counts;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}

	

	
}
