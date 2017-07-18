package com.zhongxing.entity;
/**
 * 收货地址 账号id，收货地址，收货地址id
 * @author ZhongXing
 *
 */
public class Address {
	private Integer uid;
	private Integer addid;
	private String deliveryadd;
	@Override
	public String toString() {
		return "Address [uid=" + uid + ", addid=" + addid + ", deliveryadd="
				+ deliveryadd + "]";
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getAddid() {
		return addid;
	}
	public void setAddid(Integer addid) {
		this.addid = addid;
	}
	public String getDeliveryadd() {
		return deliveryadd;
	}
	public void setDeliveryadd(String deliveryadd) {
		this.deliveryadd = deliveryadd;
	}
	public Address(Integer uid, Integer addid, String deliveryadd) {
		super();
		this.uid = uid;
		this.addid = addid;
		this.deliveryadd = deliveryadd;
	}
	public Address() {
		super();
	}
}
