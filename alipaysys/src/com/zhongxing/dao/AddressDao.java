package com.zhongxing.dao;

import java.util.List;

import com.zhongxing.entity.Address;

/**
 * 收货地址的连接数据库方法
 * @author ZhongXing
 *
 */
public interface AddressDao {
	/**
	 * 根据uid查询返回所有收货地址的集合
	 * @param uid
	 * @return List<Address>
	 */
	List<Address> select(int uid);
	/**
	 * 根据uid查询返回所有收货地址的集合
	 * @param uid
	 * @param addid
	 * @return List<Address>
	 */
	List<Address> select(int uid,int addid);
	/**
	 * 删除制定uid下的所有收货地址，不报错则返回true
	 * @param uid
	 * @return boolean
	 */
	boolean delete(int uid);
	/**
	 * 删除制定uid下的某一条收货地址，不报错则返回true
	 * @param uid
	 * @param addid
	 * @return boolean
	 */
	boolean delete(int uid,int addid);
	/**
	 * 根据uid和addid更新某一条地址，不报错则返回true
	 * @param uid
	 * @param addid
	 * @param deliveryadd
	 * @return boolean
	 */
	boolean update(int uid,int addid,String deliveryadd);
	/**
	 * 根据uid,addid和地址来插入一条数据，不报错则返回true
	 * @param uid
	 * @param deliveryadd
	 * @return boolean
	 */
	boolean insert(int uid,int addid,String deliveryadd);
}
