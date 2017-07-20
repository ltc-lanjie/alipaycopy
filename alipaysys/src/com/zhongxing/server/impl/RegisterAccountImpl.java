package com.zhongxing.server.impl;

import com.zhongxing.dao.CardDao;
import com.zhongxing.dao.LoginstatusDao;
import com.zhongxing.dao.UserDao;
import com.zhongxing.dao.Impl.CardDaoImpl;
import com.zhongxing.dao.Impl.LoginstatusDaoImpl;
import com.zhongxing.dao.Impl.UserDaoImpl;
import com.zhongxing.entity.Card;
import com.zhongxing.entity.Loginstatus;
import com.zhongxing.entity.User;
import com.zhongxing.server.RegisterAccount;

public class RegisterAccountImpl implements RegisterAccount {

	@Override
	public boolean register(Loginstatus loginstatus, User user, Card card) {
		boolean result = false;
		LoginstatusDao ld = new LoginstatusDaoImpl();
		UserDao ud = new UserDaoImpl();
		CardDao cd = new CardDaoImpl();
		//if(ud.insert(user)&&ld.i);
		return result;
	}

}
