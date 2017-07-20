package com.zhongxing.test;

import java.util.Date;
import java.util.List;

import com.zhongxing.dao.LoginstatusDao;
import com.zhongxing.dao.UserDao;
import com.zhongxing.dao.Impl.LoginstatusDaoImpl;
import com.zhongxing.dao.Impl.UserDaoImpl;
import com.zhongxing.entity.User;



public class Test2  extends Son  implements Test1{
 
	@Override
	public void c() {
		

	}

	@Override
	public String b() {
		// TODO Auto-generated method stub
		
		return null;
	}
	public static void main(String[] args) {
	/*	new Test2().a();*/
		/*List li=new DBDaoImpl().select("select * from user", User.class);
		for(Object obj:li){
			System.out.println(obj);
		}*/
		/*AddressDao ad=new AddressDaoImpl();
		Address address=new Address(1, 3, "713",
				"Jack", 533234, "130123456722",
				"广东省", "广州市", "");
		address.setArea(null);
		ad.delete(1, 3);*/
		/*AssetsDao ad=new AssetsDaoImpl();
		for(Object obj:ad.select(1)){
			System.out.println(obj);
		}*/
		/*CardDao card=new CardDaoImpl();
		System.out.println(card.select(1).size());
		card.update(1, "11223344556677889999", "11111111111111111");*/
		LoginstatusDao ls=new LoginstatusDaoImpl();
//		ls.insert("张三", "13029384940", "123", "456");
//		ls.insert("李四", "123@163.com", "1321235567", "123", "456");
		/*ls.updateEmail(3, "123@qq.com");
		ls.updateLoginpwd(3, "123456");
		ls.updatePaypwd(3, "123456");
		ls.updateTelphone(3, "13888888888");
		ls.updateType(1, 2);*/
		/*List l=ls.selectTel("13888888888");
		for(Object ovj:l){
			System.out.println(ovj);
		}*/
		/*UserDao ud=new UserDaoImpl();
		User user=new User(5, "aa", new Date(), "王五",
				"13124325235423534","男");
		ud.update(5, "8822");
		List l=ud.select("8822");
		for(Object o:l){
			System.out.println(o);
		}*/
	}

	


}
