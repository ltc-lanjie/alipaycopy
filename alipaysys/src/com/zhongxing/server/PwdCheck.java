package com.zhongxing.server;
/**
 * 主要用于密码的判断
 * @author ZhongXing
 *
 */
public interface PwdCheck {
	/**
	 * 判断账号密码是否正确 正确则返回对应页面的名字，否则返回当前页面
	 * @param uname
	 * @param uloginpwd
	 * @return String 页面名字
	 */
	String loginCheck(String uname,String uloginpwd);
	/**
	 * 判断支付密码是否正确
	 * @param uname
	 * @param upaypwd
	 * @return boolean
	 */
	boolean payCheck(String uname,String upaypwd);
	/**
	 * 判断登录密码是否正确
	 * @param uname
	 * @param uloginpwd
	 * @return boolean
	 */
	boolean LoginpwdCheck(String uname,String uloginpwd);
	
}
