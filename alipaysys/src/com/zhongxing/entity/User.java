package com.zhongxing.entity;

import java.util.Date;

/**
 * 用户个人信息
 * id，淘宝用户名，注册时间，实名认证，身份证，性别
 * @author ZhongXing
 *
 */
public class User {
	private Integer uid;
	private String uvipname;
	private Date usigntime;
	private String utruename;
	private String uidentity;
	private String usex;
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public User() {
		super();
	}
	public User(Integer uid, String uvipname, Date usigntime, String utruename,
			String uidentity,String usex) {
		super();
		this.uid = uid;
		this.usex = usex;
		this.uvipname = uvipname;
		this.usigntime = usigntime;
		this.utruename = utruename;
		this.uidentity = uidentity;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUvipname() {
		return uvipname;
	}
	public void setUvipname(String uvipname) {
		this.uvipname = uvipname;
	}
	public Date getUsigntime() {
		return usigntime;
	}
	public void setUsigntime(Date usigntime) {
		this.usigntime = usigntime;
	}
	public String getUtruename() {
		return utruename;
	}
	public void setUtruename(String utruename) {
		this.utruename = utruename;
	}
	public String getUidentity() {
		return uidentity;
	}
	public void setUidentity(String uidentity) {
		this.uidentity = uidentity;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uvipname=" + uvipname + ", usigntime="
				+ usigntime + ", utruename=" + utruename + ", uidentity="
				+ uidentity + "]";
	}
}
