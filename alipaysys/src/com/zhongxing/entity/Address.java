package com.zhongxing.entity;
/**
 * 收货地址 账号id，详细信息，收货地址id(最多5条)，收货人，省份，区，邮政编码，手机，电话
 * @author ZhongXing
 *
 */
public class Address {
	private Integer uid;
	private Integer addid;
	private String deliveryadd;
	private String acceptuser;
	private Integer postalcode;
	private String mobphone;
	private String province;
	private String area;
	private String fixphone;
	public Address() {
		super();
	}
	public Address(Integer uid, Integer addid, String deliveryadd,
			String acceptuser, Integer postalcode, String mobphone,
			String province, String area, String fixphone) {
		super();
		this.uid = uid;
		this.addid = addid;
		this.deliveryadd = deliveryadd;
		this.acceptuser = acceptuser;
		this.postalcode = postalcode;
		this.mobphone = mobphone;
		this.province = province;
		this.area = area;
		this.fixphone = fixphone;
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
	public String getAcceptuser() {
		return acceptuser;
	}
	public void setAcceptuser(String acceptuser) {
		this.acceptuser = acceptuser;
	}
	public Integer getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(Integer postalcode) {
		this.postalcode = postalcode;
	}
	public String getMobphone() {
		return mobphone;
	}
	public void setMobphone(String mobphone) {
		this.mobphone = mobphone;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getFixphone() {
		return fixphone;
	}
	public void setFixphone(String fixphone) {
		this.fixphone = fixphone;
	}
	@Override
	public String toString() {
		return "Address [uid=" + uid + ", addid=" + addid + ", deliveryadd="
				+ deliveryadd + ", acceptuser=" + acceptuser + ", postalcode="
				+ postalcode + ", mobphone=" + mobphone + ", province="
				+ province + ", area=" + area + ", fixphone=" + fixphone + "]";
	}
}
