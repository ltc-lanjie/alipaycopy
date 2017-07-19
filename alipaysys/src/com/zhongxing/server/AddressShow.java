package com.zhongxing.server;

import java.util.List;

import com.zhongxing.entity.Address;

/**
 * dao层收货地址的进一步封装,异常处理
 * @author ZhongXing
 *
 */
public interface AddressShow {
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
	 * 删除制定uid下的某一条收货地址，成功返回true
	 * @param uid
	 * @param addid
	 * @return boolean
	 */	
	boolean delete(int uid,int addid);
	/**
	 * 根据Address对象中的数据来修改一些数据，这里要做异常处理，筛选数据
	 * @param uid
	 * @param addid
	 * @param deliveryadd
	 * @return boolean
	 */
	boolean update(Address address);
	/**
	 * 根据Address对象中的数据更新一条数据，要对Address对象进行筛选
	 * @param uid
	 * @param deliveryadd
	 * @return boolean
	 */
	boolean insert(int uid,int addid,String deliveryadd);
}
