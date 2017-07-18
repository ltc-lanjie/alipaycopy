package com.zhongxing.server;

public interface Login {
	/**
	 * 
	 * @param uname
	 * @param uloginpwd
	 * @return
	 */
	String checkLogin(String uname,String uloginpwd);
	boolean checkUname(String uname);
}
