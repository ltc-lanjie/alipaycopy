package com.zhongxing.dao.Impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.zhongxing.dao.DBDao;
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
		DBDao dbdao=new DBDaoImpl();
		list=dbdao.select(sql, Transaction.class);
		return list;
	}

	@Override
	public boolean insert(Transaction transaction) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql =String.format(
				"insert into transaction(routid,rinid,rmoney,rpaytime,rreport,rorder,rtransstatus) values(%d,%d,%e,'%s','%s',%d,'%s');",
				transaction.getRoutid(),transaction.getRinid(),transaction.getRmoney(),sdf.format(transaction.getRpaytime()),transaction.getRreport(),transaction.getRorder(),transaction.getRtransstatus());
		DBDao dbdao=new DBDaoImpl();
		return dbdao.insert(sql);
	}

	@Override
	public boolean delete(int rid) {
		/*String sql= String.format("update transaction set rtransstatus = '%s' where rid = '%d'", "disable",rid);
		DBDao dbdao = new DBDaoImpl();
		return dbdao.update(sql);*/
		return false;
	}

	@Override
	public boolean update(int rid, String rreport) {
		String sql= String.format("update transaction set rreport = '%s' where rid = '%d'", rreport,rid);
		DBDao dbdao = new DBDaoImpl();
		return dbdao.update(sql);
	}

	public static void main(String[] orgs){
		/*Transaction t=new Transaction();
		t.setRinid(1001);
		t.setRmoney(300.0);
		t.setRorder(1);
		t.setRoutid(1002);
		t.setRpaytime(new Date());
		t.setRreport("aa");
		t.setRtransstatus("aa");
		TransactionDao td=new TransactionDaoImpl();
		System.out.println(td.insert(t));*/
	}
}
