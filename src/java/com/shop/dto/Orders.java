package com.shop.dto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.shop.dto.OrderItem;
import com.shop.dto.User;

public class Orders {
	private Integer oid;

	private Double money;

	private Integer state;

	private String receiveinfo;

	private String phonum;

	private Date orderTime;

	private Integer uid;
	
	private String accepter;
	
	private User user;

	private List<OrderItem> oiList = new ArrayList<>();

	public Integer getOid() {
		return oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getReceiveinfo() {
		return receiveinfo;
	}

	public void setReceiveinfo(String receiveinfo) {
		this.receiveinfo = receiveinfo;
	}

	public String getPhonum() {
		return phonum;
	}

	public void setPhonum(String phonum) {
		this.phonum = phonum;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getAccepter() {
		return accepter;
	}

	public void setAccepter(String accepter) {
		this.accepter = accepter;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<OrderItem> getOiList() {
		return oiList;
	}

	public void setOiList(List<OrderItem> oiList) {
		this.oiList = oiList;
	}

	
	
}
