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
	 * servlet 传过来的数据映射，从中筛选出有用的数据整理好传到dao层查询并返回结果集
	 * @param map 所有数据的映射 
	 * @param page 页数
	 * @return List<Transaction>
	 */
	List<Transaction> select(Map<String,String> map,int page);
	/**
	 * 插入一条数据，要对Transaction对象进行判断，保证除了备注其他都不能为空
	 * @param transaction
	 * @return
	 */
	boolean insert(Transaction transaction);
	/**
	 * 根据记录修改备注
	 * @param  rid 记录号
	 *  @param  rreport 备注信息
	 * @return Boolean
	 */
	boolean update(int rid,String rreport);
	/**
	 * 根据记录号删除一条数据
	 * @param rid 对象
	 * @return Boolean
	 */
	boolean delete(int rid);
}
