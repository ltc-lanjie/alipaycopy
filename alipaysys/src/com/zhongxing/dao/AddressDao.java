package com.zhongxing.dao;

import java.util.List;

import com.zhongxing.entity.Address;

/**
 * 收货地址的连接数据库方法 
 * 账号id，详细信息，收货地址id，收货人，省份，区，邮政编码，手机，电话
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
	 * 根据Address对象更新某一条地址，不报错则返回true
	 * @param uid
	 * @param addid
	 * @param deliveryadd
	 * @return boolean
	 */
	boolean update(Address address);
	/**
	 * 根据Address对象来插入一条数据，不报错则返回true
	 * @param uid
	 * @param deliveryadd
	 * @return boolean
	 */
	boolean insert(Address address);
}
