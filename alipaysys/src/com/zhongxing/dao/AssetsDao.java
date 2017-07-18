package com.zhongxing.dao;

import java.util.List;

import com.zhongxing.entity.Assets;

/**
 * 账户余额连接数据库的接口  id,账户余额，余额宝
 * @author ZhongXing
 *
 */
public interface AssetsDao {
	/**
	 * 根据uid查询Assets下所有的数据
	 * @param uid
	 * @return  List<Assets>
	 */
	List<Assets> select(int uid);
	/**
	 *  根据uid和直接修改当前账户余额
	 * @param uid
	 * @param balance
	 * @return boolean
	 */
	boolean updateBalance(int uid,double balance);
	/**
	 * 根据uid和余额宝余额直接修改当前余额宝余额
	 * @param uid
	 * @param btreasure
	 * @return boolean
	 */
	boolean updateBtreasure(int uid,double btreasure);
	/**
	 * 根据uid,账户余额和余额宝余额插入一条新的数据
	 * @param uid
	 * @param balance
	 * @param btreasure
	 * @return
	 */
	boolean insert(int uid,double balance,double btreasure);
	
}
