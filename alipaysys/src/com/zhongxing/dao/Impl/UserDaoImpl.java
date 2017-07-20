package com.zhongxing.dao.Impl;

import java.text.SimpleDateFormat;
import java.util.List;

import com.zhongxing.dao.DBDao;
import com.zhongxing.dao.UserDao;
import com.zhongxing.entity.User;

public class UserDaoImpl implements UserDao {
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

	@Override
	public List<User> select(int uid) {
		String sql=String.format("select * from user where uid=%d;", uid);
		DBDao dbdao=new DBDaoImpl();
		List<User> list=dbdao.select(sql, User.class);
		return list;
	}

	@Override
	public List<User> select(String uvipname) {
		String sql=String.format("select * from user where uvipname=%s;",uvipname);
		DBDao dbdao=new DBDaoImpl();
		List<User> lsit=dbdao.select(sql, User.class);
		return lsit;
	}
	
	@Override
	public boolean insert(User user) {
		String sql =String.format("insert into user values('%s','%s','%s','%s',%d);",user.getUvipname(),sdf.format(user.getUsigntime()),user.getUtruename(),user.getUidentity(),user.getUid());
		DBDao dbdao=new DBDaoImpl();
		return dbdao.insert(sql);
	}

	@Override
	public boolean update(int uid, String uvipname) {
		String sql= String.format("update user set uvipname = '%s' where uid = '%d'", uvipname,uid);
		DBDao dbdao = new DBDaoImpl();
		return dbdao.update(sql);
	}

}
