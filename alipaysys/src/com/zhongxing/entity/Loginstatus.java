package com.zhongxing.entity;
/**
 * 用户登录  
 * id，用户名，手机号，邮箱，支付密码，登录密码，类型
 * @author ZhongXing
 *
 */
public class Loginstatus {
	private String uname;
	private Integer type;
	private String uemail;
	private String uloginpwd;
	private String utelphone;
	private String upaypwd;
	private Integer uid;
	public Loginstatus() {
		super();
	}
	public Loginstatus(String uname, Integer type, String uemail,
			String uloginpwd, String utelphone, String upaypwd, Integer uid) {
		super();
		this.uname = uname;
		this.type = type;
		this.uemail = uemail;
		this.uloginpwd = uloginpwd;
		this.utelphone = utelphone;
		this.upaypwd = upaypwd;
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUloginpwd() {
		return uloginpwd;
	}
	public void setUloginpwd(String uloginpwd) {
		this.uloginpwd = uloginpwd;
	}
	public String getUtelphone() {
		return utelphone;
	}
	public void setUtelphone(String utelphone) {
		this.utelphone = utelphone;
	}
	public String getUpaypwd() {
		return upaypwd;
	}
	public void setUpaypwd(String upaypwd) {
		this.upaypwd = upaypwd;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Loginstatus [uname=" + uname + ", type=" + type + ", uemail="
				+ uemail + ", uloginpwd=" + uloginpwd + ", utelphone="
				+ utelphone + ", upaypwd=" + upaypwd + ", uid=" + uid + "]";
	}
}
