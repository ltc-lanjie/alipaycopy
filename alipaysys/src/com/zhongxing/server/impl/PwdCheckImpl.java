package com.zhongxing.server.impl;

import com.zhongxing.dao.LoginstatusDao;
import com.zhongxing.dao.Impl.LoginstatusDaoImpl;
import com.zhongxing.entity.Loginstatus;
import com.zhongxing.server.PwdCheck;

public class PwdCheckImpl implements PwdCheck {

	@Override
	public String loginCheck(String uname, String uloginpwd) {
		String result=null;
		if(LoginpwdCheck(uname,uloginpwd)){
			result="./";
		}
		return result;
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
