package com.zhongxing.dao.Impl;

import java.util.List;

import com.zhongxing.dao.CardDao;
import com.zhongxing.dao.DBDao;
import com.zhongxing.entity.Assets;
import com.zhongxing.entity.Card;
/**
 * 银行卡连接数据库的接口 
 *  卡，id
 * @author ZhongXing
 *
 */
public class CardDaoImpl implements CardDao {
	private final DBDao db=new DBDaoImpl();
	/**
	 * 根据uid查询当前的银行卡
	 * @param uid
	 * @return
	 */
	@Override
	public List<Card> select(int uid) {
		String sql=String.format("select * from card where uid = '%d';", uid);
		return db.select(sql, Card.class);
		}

	@Override
	public boolean update(int uid, String olducard, String newucard) {
		String sql=String.format("update card set ucard='%s' WHERE uid = %d and ucard = '%s';", 
				newucard,uid,olducard);
		return db.update(sql);
	}

	@Override
	public boolean insert(int uid, String ucard) {
		String sql=String.format("insert into card(uid,ucard) values(%d,'%s');",
				uid,ucard);
		return db.insert(sql);
	}

	@Override
	public boolean delete(int uid) {
		String sql=String.format("delete from card where uid = '%d';",uid);
		return db.delete(sql);
	}

	@Override
	public boolean delete(int uid, String ucard) {
		String sql=String.format("delete from card where uid = '%d' and ucard = '%s';",
				uid,ucard);
		return db.delete(sql);
		
	}

}
