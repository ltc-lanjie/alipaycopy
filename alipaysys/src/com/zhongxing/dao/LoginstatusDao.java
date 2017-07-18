package com.zhongxing.dao;

import java.util.List;

import com.zhongxing.entity.Loginstatus;

/**
 * 用户登录连接数据库的接口  
 * id，用户名，手机号，邮箱，支付密码，登录密码，类型
 * @author ZhongXing
 *
 */
public interface LoginstatusDao {
	/**
	 * 根据id查询所有数据
	 * @param uid
	 * @return List<Loginstatus>
 	 */
	List<Loginstatus> selectID(int uid);
	/**
	 * 根据名字查询所有数据
	 * @param uid
	 * @return List<Loginstatus>
 	 */
	List<Loginstatus> selectName(String uname);
	/**
	 * 根据手机查询所有数据
	 * @param uid
	 * @return List<Loginstatus>
 	 */
	List<Loginstatus> selectTel(String utelphone);
	/**
	 * 根据邮箱查询所有数据
	 * @param uid
	 * @return List<Loginstatus>
 	 */
	List<Loginstatus> selectEmail(String uemail);
	/**
	 * 修改某一id下的登录密码
	 * @param uid
	 * @param uloginpwd
	 * @return boolean
	 */
	boolean updateLoginpwd(int uid,String uloginpwd);
	/**
	 * 修改某一id下的支付密码
	 * @param uid
	 * @param upaypwd 支付密码
	 * @return boolean
	 */
	boolean updatePaypwd(int uid,String upaypwd);
	/**
	 * 修改某一id下的手机号码
	 * @param uid
	 * @param utelphone 登录密码
	 * @return boolean
	 */
	boolean updateTelphone(int uid,String utelphone);
	/**
	 * 修改某一id下的email
	 * @param uid
	 * @param uemail 
	 * @return boolean
	 */
	boolean updateEmail(int uid,String uemail);
	/**
	 * 修改某一id下的类型
	 * @param uid
	 * @param type
	 * @return boolean
	 */
	boolean updateEmail(int uid,int type);
	/**
	 * 插入一条新的账户 
	 * @param uname 名字
	 * @param utelphone 手机 
	 * @param uloginpwd 登录密码
	 * @param upaypwd  支付密码
	 * @return boolean
	 */
	boolean insert(String uname,String utelphone,String uloginpwd,String upaypwd);
	
}
