package com.zhongxing.server;
/**
 * 用于处理用户余额的资金操作：余额宝提现，余额宝充值，充值，转账，提现
 * @author ZhongXing
 *
 */
public interface BalanceBusiness {
	/**
	 * 余额宝提现操作，从余额宝中把指定金额转到账户余额，要判断金额是否足够
	 * @param uid 
	 * @param money 
	 * @return boolean 
	 */
	 boolean btrWithdrawals(int uid,double money);
	 /**
	  * 账户提现操作，从余额中减去指定金额
	  * @param uid
	  * @param money
	  * @return boolean
	  */
	 boolean withdrawals(int uid,double money);
	 /**
	  * 从银行卡中充值制定金额到账户余额，充值前要先判断是否有银行卡，充值后要判断账户余额是否改变
	  * @param uid
	  * @param money
	  * @return boolean
	  */
	 boolean recharge(int uid,double money);
	 /**
	  * 从账户中充值制定金额到余额宝中，先减去指定金额后如果成功改变，则更新余额宝数据
	  * @param uid
	  * @param money
	  * @return boolean
	  */
	 boolean btrRecharge(int uid,double money);
	 /**
	  * 转账操作 ，先减后加，判断用户金额时候足够，转账后判断是否到账
	  * @param uid 当前用户
	  * @param rinid 转入用户
	  * @param money 转账金额
	  * @return
	  */
	 boolean transferAccounts(int uid,int rinid,double money);
}
