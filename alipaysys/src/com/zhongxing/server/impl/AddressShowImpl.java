package com.zhongxing.server.impl;

import java.util.ArrayList;
import java.util.List;

import com.zhongxing.dao.AddressDao;
import com.zhongxing.dao.Impl.AddressDaoImpl;
import com.zhongxing.entity.Address;
import com.zhongxing.server.AddressShow;
/**
 * dao层收货地址的进一步封装,异常处理
 * @author ZhongXing
 *
 */
public class AddressShowImpl implements AddressShow {
	/**
	 * 根据uid查询返回所有收货地址的集合
	 * @param uid
	 * @return List<Address>
	 */
	private AddressDao ad=new AddressDaoImpl();
	@Override
	public List<Address> select(int uid) {
		if(uid<=0){
			return new ArrayList();
		}
		return ad.select(uid);
	}

	@Override
	public List<Address> select(int uid, int addid) {
		if(uid<=0||addid<=0){
			return new ArrayList();
		}
		return ad.select(uid);
	}

	@Override
	public boolean delete(int uid) {
		if(uid<=0){
			return false;
		}
		return ad.delete(uid);
	}

	@Override
	public boolean delete(int uid, int addid) {
		if(uid<=0||addid<=0){
			return false;
		}
		return ad.delete(uid);
	}
	/**
	 * 根据Address对象中的数据来修改一些数据，这里要做异常处理，筛选数据
	 * @param uid
	 * @param addid
	 * @param deliveryadd
	 * @return boolean
	 */
	@Override
	public boolean update(Address address) {
		if(address.getUid()<=0||address.getAddid()<=0||address.getAddid()>5||address.getPostalcode()<=0){
			return false;
		}
		if(address.getDeliveryadd()==null){
			address.setDeliveryadd("");
		}
		if(address.getFixphone()==null&&address.getMobphone()==null){
			System.out.println("手机或者电话必须要有一个");
			return false;
		}
		return ad.update(address);
	}

	@Override
	public boolean insert(Address address) {
		if(address.getUid()<=0||address.getPostalcode()<=0){
			return false;
		}
		if(ad.select(address.getUid()).size()>=5){
			System.out.println("地址数量超过长度");
			return false;
		}
		if(address.getDeliveryadd()==null){
			address.setDeliveryadd("");
		}
		if(address.getFixphone()==null&&address.getMobphone()==null){
			System.out.println("手机或者电话必须要有一个");
			return false;
		}
		return ad.insert(address);
	}

	

}
