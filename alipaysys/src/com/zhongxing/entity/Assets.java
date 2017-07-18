package com.zhongxing.entity;
/**
 * 账户余额  id,账户余额，余额宝
 * @author ZhongXing
 *
 */
public class Assets {
	private Integer uid;
	private Double balance;
	private Double btreasure;
	@Override
	public String toString() {
		return "Assets [uid=" + uid + ", balance=" + balance + ", btreasure="
				+ btreasure + "]";
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}
	public Double getBtreasure() {
		return btreasure;
	}
	public void setBtreasure(Double btreasure) {
		this.btreasure = btreasure;
	}
	public Assets(Integer uid, Double balance, Double btreasure) {
		super();
		this.uid = uid;
		this.balance = balance;
		this.btreasure = btreasure;
	}
	public Assets() {
		super();
	}
}
