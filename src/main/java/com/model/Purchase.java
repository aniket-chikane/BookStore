package com.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Purchase {
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int OrderNo;
	private String BPdate;
	private int Uid;
	private int bid;
	private int Quantity;
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
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
	
	
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}

	

	
}
