package com.zhongxing.test;

import com.zhongxing.dao.AddressDao;
import com.zhongxing.dao.Impl.AddressDaoImpl;
import com.zhongxing.entity.Address;



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
		AddressDao ad=new AddressDaoImpl();
		Address address=new Address(1, 3, "713",
				"Jack", 533234, "130123456722",
				"广东省", "广州市", "");
		address.setArea(null);
		ad.delete(1, 3);
	}

	


}
