package com.zhongxing.server;

import java.util.List;
import java.util.Map;

import com.zhongxing.entity.Transaction;
/**
 * 用于查询交易记录的业务逻辑封装
 * @author ZhongXing
 *
 */
public interface TransactionShow {
	/**
	 * servlet 传过来的数据映射，从中筛选出有用的数据整理好穿到dao层查询并返回结果集
	 * @param map 所有数据的映射 
	 * @param page 页数
	 * @return List<Transaction>
	 */
	List<Transaction> select(Map map,int page);
}
