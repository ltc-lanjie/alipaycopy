package com.zhongxing.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zhongxing.entity.Transaction;

/**
 * 交易记录连接数据库
 * 记录号，转出id，转入id，交易金额，交易时间，备注，订单号，交易类型
 * @author ZhongXing
 *
 */
public interface TransactionDao {
	/*static final Map<Integer,String> type=new HashMap<Integer,String>();*/
	static final String RID="rid";
	static final String ROUTID="routid";
	static final String RINID="rinid";
	static final String MInROMNEY="minrmoney";
	static final String MAXROMNEY="maxrmoney";
	static final String BEFORERAYTIME="beforerpaytime";
	static final String AFTERRPAYTIME="afterrpaytime";
	static final String RREPORT="rreport";
	static final String RORDER="rorder";
	static final String RTRANSSTATUS="rtransstatus";
	/**
	 * 根据Hashmap来接收数据 
	 * 
	 * 
	 * @param map
	 * @param page 页数
	 * @return List<Transaction> 
	 */
	List<Transaction> select(Map<String,String> map,int page);
	/*List<Transaction> selectRid(int rid);
	List<Transaction> selectRorder(int rorder);
	
	List<Transaction> select(Date before,Date after,int uid);
	List<Transaction> select(Date before,Date after,int uid,String rtransstatus);
	List<Transaction> select(Date before,Date after,int uid,double minMoney,double maxMoney);
	List<Transaction> select(Date before,Date after,int uid,String rtransstatus,double minMoney,double maxMoney);
	
	List<Transaction> selectRoundid(Date after,Date beforeint,int roundid);
	List<Transaction> selectRoundid(Date after,Date beforeint,int roundid,String rtransstatus);
	List<Transaction> selectRoundid(Date after,Date beforeint,int roundid,double minMoney,double maxMoney);
	List<Transaction> selectRoundid(Date after,Date beforeint,int roundid,String rtransstatus,double minMoney,double maxMoney);
	
	List<Transaction> selectRintid(Date after,Date beforeint,int rintid);
	List<Transaction> selectRintid(Date after,Date beforeint,int rintid,String rtransstatus);
	List<Transaction> selectRintid(Date after,Date beforeint,int rintid,double minMoney,double maxMoney);
	List<Transaction> selectRintid(Date after,Date beforeint,int rintid,String rtransstatus,double minMoney,double maxMoney);*/
	
	/*List<Transaction> select(double minmoney,double maxmoney);*/
	/**
	 * 插入一条数据
	 * @param transaction 对象
	 * @return Boolean
	 */
	boolean insert(Transaction transaction);
	/**
	 * 根据记录号删除一条数据，除了备注其他要保证不为空
	 * @param rid 对象
	 * @return Boolean
	 */
	boolean delete(int rid);
	/**
	 * 根据记录修改备注
	 * @param  rid
	 *  @param  rreport
	 * @return Boolean
	 */
	boolean update(int rid,String rreport);
}
