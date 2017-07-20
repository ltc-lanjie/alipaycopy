package com.zhongxing.server.impl;

import java.util.List;
import java.util.Map;

import com.zhongxing.dao.TransactionDao;
import com.zhongxing.dao.Impl.TransactionDaoImpl;
import com.zhongxing.entity.Transaction;
import com.zhongxing.server.TransactionShow;

public class TransactionShowImpl implements TransactionShow {

	@Override
	public List<Transaction> select(Map<String, String> map, int page) {
		TransactionDao td = new TransactionDaoImpl();
		return td.select(map, page);
	}

	@Override
	public boolean insert(Transaction transaction) {
		TransactionDao td = new TransactionDaoImpl();
		return td.insert(transaction);
	}

	@Override
	public boolean update(int rid, String rreport) {
		TransactionDao td = new TransactionDaoImpl();
		return td.update(rid, rreport);
	}

	@Override
	public boolean delete(int rid) {
		TransactionDao td = new TransactionDaoImpl();
		return td.delete(rid);
	}

}
