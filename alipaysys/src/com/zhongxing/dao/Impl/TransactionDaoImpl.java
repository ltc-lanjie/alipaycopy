package com.zhongxing.dao.Impl;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.zhongxing.dao.TransactionDao;
import com.zhongxing.entity.Transaction;

public class TransactionDaoImpl implements TransactionDao {

	@Override
	public List<Transaction> select(Map<String, String> map, int page) {
		List<Transaction> list=null;
		String order="";
		if(map!=null){
			Set<Map.Entry<String, String>> entries = map.entrySet();
			if(entries.size()>0){
				order="where ";
				Iterator<Map.Entry<String , String>> iterator=entries.iterator();
				while(iterator.hasNext()){
					Map.Entry<String, String> next=iterator.next();
					order+=next.getKey()+"='"+next.getValue()+"',";
				}
				order=order.substring(0, order.length()-1);
			}
		}
		String sql=String.format("select * from transaction %s limit %d,10", order ,page);
		System.out.println(sql);
		return list;
	}

	@Override
	public boolean insert(Transaction transaction) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int rid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(int rid, String rreport) {
		// TODO Auto-generated method stub
		return false;
	}

	public static void main(String[] orgs){
		HashMap<String, String> hm = new HashMap<>();
        hm.put("test1","test2");
        hm.put("test1","test4");
        hm.put("test2", "test4");
        TransactionDao td=new TransactionDaoImpl();
        td.select(hm, 0);
	}
}
