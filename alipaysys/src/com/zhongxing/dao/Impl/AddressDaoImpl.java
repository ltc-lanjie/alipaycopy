package com.zhongxing.dao.Impl;

import java.util.List;

import com.zhongxing.dao.AddressDao;
import com.zhongxing.dao.DBDao;
import com.zhongxing.entity.Address;

public class AddressDaoImpl implements  AddressDao{
	/**
	 * 根据uid查询返回所有收货地址的集合
	 * @param uid
	 * @return List<Address>
	 */
	private final DBDao db=new DBDaoImpl();
	@Override
	public List<Address> select(int uid) {
		String sql=String.format("select * from address where uid = '%d';", uid);
		return db.select(sql, Address.class);
	}
	/**
	 * 根据uid查询返回所有收货地址的集合
	 * @param uid
	 * @param addid
	 * @return List<Address>
	 */
	@Override
	public List<Address> select(int uid, int addid) {
		String sql=String.format("select * from address where uid = '%d' and addid = '%d';",uid,addid);
		return db.select(sql, Address.class);
	}

	@Override
	public boolean delete(int uid) {
		String sql=String.format("delete from address where uid = '%d';",uid);
		return db.delete(sql);
	}

	@Override
	public boolean delete(int uid, int addid) {
		String sql=String.format("delete from address where uid = '%d' and addid = '%d';", uid,addid);
		return db.delete(sql);
	}

	@Override
	public boolean update(Address address) {
		String sql=String.format("update address set deliveryadd = '%s',acceptuser= '%s',postalcode='%d',"
				+ "mobphone='%s',province='%s',area='%s',fixphone='%s' where uid='%d' and addid='%d';",
				address.getDeliveryadd(),
				address.getAcceptuser(),
				address.getPostalcode(),
				address.getMobphone(),
				address.getProvince(),
				address.getArea(),
				address.getFixphone(),
				address.getUid(),
				address.getAddid());
		return db.update(sql);
	}

	@Override
	public boolean insert(Address address) {
		String sql=String.format("insert into address(deliveryadd,uid,addid,acceptuser,"
				+ "postalcode,mobphone,province,area,fixphone) values('%s','%d','%d','%s','%d','%s','%s','%s','%s'); ", 
				address.getDeliveryadd(),
				address.getUid(),
				address.getAddid(),
				address.getAcceptuser(),
				address.getPostalcode(),
				address.getMobphone(),
				address.getProvince(),
				address.getArea(),
				address.getFixphone());
		return db.insert(sql);
	}

}
