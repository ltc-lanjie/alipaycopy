package com.zhongxing.dao;

import java.util.List;

import com.zhongxing.entity.User;

/**
 * 用户个人信息连接数据库接口
 * id，淘宝用户名，注册时间，实名认证，身份证,性别
 * @author ZhongXing
 *
 */
public interface UserDao {
	/**
	 *  根据id查询所有
	 * @param uid
	 * @return List<User> 
	 */
	List<User> select (int uid);
	/**
	 *  根据淘宝用户名查询所有
	 * @param uname
	 * @return List<User> 
	 */
	List<User> select (String uvipname);
	/**
	 * 插入新用户,除了淘宝用户名其他都要有
	 * @param user
	 * @return boolean
	 */
	boolean insert(User user);
	/**
	 * 更新淘宝用户名
	 * @param uid
	 * @param uvipname
	 * @return
	 */
	boolean update(int uid,String uvipname);
}
