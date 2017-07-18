package com.zhongxing.dao;

import java.util.List;

import com.zhongxing.entity.Card;

/**
 * 银行卡连接数据库的接口 
 *  卡，id
 * @author ZhongXing
 *
 */
public interface CardDao {
	/**
	 * 根据uid查询当前的银行卡
	 * @param uid
	 * @return
	 */
	List<Card> select(int uid);
	/**
	 * 修改当前uid的某一个银行卡
	 * @param uid 
	 * @param olducard 原来的银行卡
	 * @param newucard 替换的银行卡
	 * @return
	 */
	boolean update(int uid,int olducard,int newucard);
	/**
	 * 增加一张银行卡
	 * @param uid
	 * @param ucard
	 * @return boolean
	 */
	boolean insert(int uid,int ucard);
	/**
	 * 删除当前id下所有的银行卡
	 * @param uid
	 * @return boolean
	 */
	boolean delete(int uid);
	/**
	 * 删除当前id下某一张银行卡
	 * @param uid
	 * @param ucard
	 * @return boolean 
	 */
	boolean delete(int uid,int ucard);
}
