package com.zhongxing.dao;

import java.util.List;
/**
 * 这是一个公用的连接数据库的接口，所有连接数据库的sql语句都会先调用这个接口
 * @author ZhongXing
 *
 */
public interface DBDao {
	/**
	 * 根据sql语句查询返回对应class的集合
	 * @param sql
	 * @param clazz
	 * @return List<T>
	 */
	 <T> List<T> select(String sql,Class<T> clazz);
	 /**
	  * 运行一条sql语句删除
	  * @param sql
	  * @return Boolean
	  */
	 boolean delete(String sql);
	 /**
	  * 运行一条sql语句插入
	  * @param sql
	  * @return Boolean
	  */
	 boolean insert(String sql);
	 /**
	  * 运行一条sql语句更新
	  * @param sql
	  * @return Boolean
	  */
	 boolean update(String sql);
}
