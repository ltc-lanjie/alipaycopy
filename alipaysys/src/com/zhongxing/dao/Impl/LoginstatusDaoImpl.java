package com.zhongxing.dao.Impl;

import java.util.List;

import com.zhongxing.dao.DBDao;
import com.zhongxing.dao.LoginstatusDao;
import com.zhongxing.entity.Address;
import com.zhongxing.entity.Loginstatus;
/**
 * 用户登录连接数据库的接口  
 * id，用户名，手机号，邮箱，支付密码，登录密码，类型
 * @author ZhongXing
 *
 */
public class LoginstatusDaoImpl implements LoginstatusDao {
	private final DBDao db=new DBDaoImpl();
	/**
	 * 根据id查询所有数据
	 * @param uid
	 * @return List<Loginstatus>
 	 */
	@Override
	public List<Loginstatus> selectID(int uid) {
		String sql=String.format("select * from loginstatus where uid = '%d';", uid);
		return db.select(sql, Loginstatus.class);
	}

	@Override
	public List<Loginstatus> selectName(String uname) {
		String sql=String.format("select * from loginstatus where uname = '%s';", uname);
		return db.select(sql, Loginstatus.class);
	}

	@Override
	public List<Loginstatus> selectTel(String utelphone) {
		String sql=String.format("select * from loginstatus where utelphone = '%s';", utelphone);
		return db.select(sql, Loginstatus.class);
	}

	@Override
	public List<Loginstatus> selectEmail(String uemail) {
		String sql=String.format("select * from loginstatus where uemail = '%s';", uemail);
		return db.select(sql, Loginstatus.class);
	}

	@Override
	public boolean updateLoginpwd(int uid, String uloginpwd) {
		String sql=String.format("update loginstatus set uloginpwd='%s' WHERE uid=%d;", uloginpwd,uid);
		return db.update(sql);
	}

	@Override
	public boolean updatePaypwd(int uid, String upaypwd) {
		String sql=String.format("update loginstatus set upaypwd='%s' WHERE uid=%d;", upaypwd,uid);
		return db.update(sql);
	}

	@Override
	public boolean updateTelphone(int uid, String utelphone) {
		String sql=String.format("update loginstatus set utelphone='%s' WHERE uid=%d;", utelphone,uid);
		return db.update(sql);
	}

	@Override
	public boolean updateEmail(int uid, String uemail) {
		String sql=String.format("update loginstatus set uemail='%s' WHERE uid=%d;", uemail,uid);
		return db.update(sql);
	}

	@Override
	public boolean updateType(int uid, int utype) {
		String sql=String.format("update loginstatus set utype='%d' WHERE uid=%d;", utype,uid);
		return db.update(sql);
	}

	@Override
	public boolean insert(String uname, String uemail, String utelphone,
			String uloginpwd, String upaypwd) {
		String sql=String.format("insert into loginstatus(uname,uemail,utelphone,uloginpwd,upaypwd) "
				+ "values('%s','%s','%s','%s','%s');",
				uname,uemail,utelphone,uloginpwd,upaypwd);
		return db.insert(sql);
	}

	@Override
	public boolean insert(String uname, String utelphone, String uloginpwd,
			String upaypwd) {
		String sql=String.format("insert into loginstatus(uname,utelphone,uloginpwd,upaypwd) "
				+ "values('%s','%s','%s','%s');",
				uname,utelphone,uloginpwd,upaypwd);
		return db.insert(sql);
	}

}
