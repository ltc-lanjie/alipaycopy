package com.zhongxing.dao.Impl;

import java.util.List;

import com.zhongxing.dao.AssetsDao;
import com.zhongxing.dao.DBDao;
import com.zhongxing.entity.Address;
import com.zhongxing.entity.Assets;
/**
 * 账户余额连接数据库的接口  id,账户余额，余额宝
 * @author ZhongXing
 *
 */
public class AssetsDaoImpl implements AssetsDao {
	private final DBDao db=new DBDaoImpl();
	/**
	 * 根据uid查询Assets下所有的数据
	 * @param uid
	 * @return  List<Assets>
	 */

	@Override
	public List<Assets> select(int uid) {
		String sql=String.format("select * from assets where uid = '%d';", uid);
		return db.select(sql, Assets.class);
	}
	/**
	 *  根据uid和直接修改当前账户余额
	 * @param uid
	 * @param balance
	 * @return boolean
	 */
	@Override
	public boolean updateBalance(int uid, double balance) {
		String sql=String.format("update assets set balance=%f WHERE uid=%d;", balance,uid);
		return db.update(sql);
	}

	@Override
	public boolean updateBtreasure(int uid, double btreasure) {
		String sql=String.format("update assets set btreasure=%f WHERE uid=%d;", btreasure,uid);
		return db.update(sql);
	}

	@Override
	public boolean insert(int uid, double balance, double btreasure) {
		String sql=String.format("insert into assets(uid,balance,btreasure) values(%d,%f,%f);",
				uid,balance,btreasure);
		return db.insert(sql);
	}
	
}
