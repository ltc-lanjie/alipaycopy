package com.zhongxing.server;

import java.util.List;

import com.zhongxing.entity.Card;

/**
 * 银行卡管理  
 * 同时要对传入的字段进行异常处理
 * @author ZhongXing
 *
 */
public interface CardAdministration {
	/**
	 * 查询当前id下所有的银行卡
	 * @param uid
	 * @return List<Card> 
	 */
	List<Card> select(int uid);
	/**
	 * 根据Card对象插入一张银行卡，要进行异常处理
	 * @param card
	 * @return Boolean
	 */
	boolean insert(Card card);
	/**
	 * 根据Card对象下的id和卡号删除对应的银行卡，只删一条
	 * @param card
	 * @return boolean
	 */
	boolean delete(Card card);
}
