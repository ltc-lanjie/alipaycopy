package com.zhongxing.entity;

import java.util.Date;

/**
 * 交易记录
 * 记录号，转出id，转入id，交易金额，交易时间，备注，订单号，交易类型
 * @author ZhongXing
 *
 */
public class Transaction {
	private Integer rid;
	private Integer routid;
	private Integer rinid;
	private Double rmoney;
	private Date rpaytime;
	private String rreport;
	private Integer rorder;
	private String rtransstatus;
	public Transaction() {
		super();
	}
	public Transaction(Integer rid, Integer routid, Integer rinid,
			Double rmoney, Date rpaytime, String rreport, Integer rorder,
			String rtransstatus) {
		super();
		this.rid = rid;
		this.routid = routid;
		this.rinid = rinid;
		this.rmoney = rmoney;
		this.rpaytime = rpaytime;
		this.rreport = rreport;
		this.rorder = rorder;
		this.rtransstatus = rtransstatus;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getRoutid() {
		return routid;
	}
	public void setRoutid(Integer routid) {
		this.routid = routid;
	}
	public Integer getRinid() {
		return rinid;
	}
	public void setRinid(Integer rinid) {
		this.rinid = rinid;
	}
	public Double getRmoney() {
		return rmoney;
	}
	public void setRmoney(Double rmoney) {
		this.rmoney = rmoney;
	}
	public Date getRpaytime() {
		return rpaytime;
	}
	public void setRpaytime(Date rpaytime) {
		this.rpaytime = rpaytime;
	}
	public String getRreport() {
		return rreport;
	}
	public void setRreport(String rreport) {
		this.rreport = rreport;
	}
	public Integer getRorder() {
		return rorder;
	}
	public void setRorder(Integer rorder) {
		this.rorder = rorder;
	}
	public String getRtransstatus() {
		return rtransstatus;
	}
	public void setRtransstatus(String rtransstatus) {
		this.rtransstatus = rtransstatus;
	}
	@Override
	public String toString() {
		return "Transaction [rid=" + rid + ", routid=" + routid + ", rinid="
				+ rinid + ", rmoney=" + rmoney + ", rpaytime=" + rpaytime
				+ ", rreport=" + rreport + ", rorder=" + rorder
				+ ", rtransstatus=" + rtransstatus + "]";
	}
}
