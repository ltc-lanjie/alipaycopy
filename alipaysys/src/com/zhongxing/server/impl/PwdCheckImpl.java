package com.zhongxing.server.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.zhongxing.dao.LoginstatusDao;
import com.zhongxing.dao.Impl.LoginstatusDaoImpl;
import com.zhongxing.entity.Loginstatus;
import com.zhongxing.server.PwdCheck;
/**
 * 主要用于密码的判断
 * @author ZhongXing
 *
 */
public class PwdCheckImpl implements PwdCheck {
	private final LoginstatusDao ld=new LoginstatusDaoImpl();
	/**
	 * 判断账号密码是否正确 正确则返回对应页面的名字，否则返回当前页面
	 * @param uname
	 * @param uloginpwd
	 * @return String 页面名字
	 */
	@Override
	public String loginCheck(String uname, String uloginpwd) {
		String url="alipay/Login.jsp";
		List<Loginstatus> li=new ArrayList();
		//匹配手机号
		Pattern tel=Pattern.compile("1[3,5]{1}[0-9]{9}");
		Matcher telCheck=tel.matcher(uname);
		if(telCheck.matches()){
			li=ld.selectTel(uname);
		}else{
			Pattern email=Pattern.compile("[0-9a-zA-Z]+@[0-9a-zA-Z]+.c[nmo]+");
			Matcher emailCheck=email.matcher(uname);
			if(emailCheck.matches()){
				li=ld.selectEmail(uname);
			}else{
				li=ld.selectName(uname);
			}
		}
		if(li.size()!=0){
			Loginstatus login=li.get(0);
			if(uloginpwd.equals(login.getUloginpwd())){
				url="alipay/Personal.jsp";
			}
		}
		return url;
	}

	@Override
	public boolean payCheck(String uname, String upaypwd) {
		LoginstatusDao ld = new LoginstatusDaoImpl();
		Loginstatus loginstatus=ld.selectName(uname).get(0);
		return loginstatus.getUpaypwd().equals(upaypwd);
	}

	@Override
	public boolean LoginpwdCheck(String uname, String uloginpwd) {
		LoginstatusDao ld = new LoginstatusDaoImpl();
		Loginstatus loginstatus=ld.selectName(uname).get(0);
		return loginstatus.getUloginpwd().equals(uloginpwd);
	}

}
