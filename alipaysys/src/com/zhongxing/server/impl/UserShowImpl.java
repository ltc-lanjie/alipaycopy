package com.zhongxing.server.impl;

import java.util.List;

import com.zhongxing.dao.UserDao;
import com.zhongxing.dao.Impl.UserDaoImpl;
import com.zhongxing.entity.User;
import com.zhongxing.server.UserShow;

public class UserShowImpl implements UserShow {

	@Override
	public List<User> select(int uid) {
		UserDao ud = new UserDaoImpl();
		List<User> list = ud.select(uid);
		return list;
	}

	@Override
	public List<User> select(String uvipname) {
		UserDao ud = new UserDaoImpl();
		List<User> list = ud.select(uvipname);
		return list;
	}

	@Override
	public boolean insert(User user) {
		UserDao ud = new UserDaoImpl();
		return ud.insert(user);
	}

	@Override
	public boolean update(int uid, String uvipname) {
		UserDao ud = new UserDaoImpl();
		return ud.update(uid, uvipname);
	}

}
