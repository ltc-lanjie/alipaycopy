package com.zhongxing.server.impl;

import com.zhongxing.dao.AssetsDao;
import com.zhongxing.dao.CardDao;
import com.zhongxing.dao.Impl.AssetsDaoImpl;
import com.zhongxing.dao.Impl.CardDaoImpl;
import com.zhongxing.entity.Assets;
import com.zhongxing.server.BalanceBusiness;

public class BalanceBusinessImpl implements BalanceBusiness {

	@Override
	public boolean btrWithdrawals(int uid, double money) {
		boolean result = false;
		AssetsDao ad = new AssetsDaoImpl();
		Assets assets=ad.select(uid).get(0);
		Double btreasure = assets.getBtreasure();
		Double balance=assets.getBalance();
		if(btreasure>money){
			ad.updateBalance(uid, balance+money);
			ad.updateBtreasure(uid, btreasure-money);
			result=true;
		}
		return result;
	}

	@Override
	public boolean withdrawals(int uid, double money) {
		boolean result = false;
		AssetsDao ad = new AssetsDaoImpl();
		Assets assets=ad.select(uid).get(0);
		Double balance=assets.getBalance();
		if(balance>money){
			ad.updateBalance(uid, balance-money);
			result=true;
		}
		return result;
	}

	@Override
	public boolean recharge(int uid, double money) {
		boolean result = false;
		AssetsDao ad = new AssetsDaoImpl();
		CardDao cd=new CardDaoImpl();
		if(cd.select(uid).size()>0){
			if(ad.updateBalance(uid, ad.select(uid).get(0).getBalance()+money))
				result=true;
		}
		return result;
	}

	@Override
	public boolean btrRecharge(int uid, double money) {
		boolean result = false;
		AssetsDao ad = new AssetsDaoImpl();
		Assets assets=ad.select(uid).get(0);
		Double btreasure = assets.getBtreasure();
		Double balance=assets.getBalance();
		if(balance>money){
			ad.updateBalance(uid, balance-money);
			ad.updateBtreasure(uid, btreasure+money);
			result=true;
		}
		return result;
	}

	@Override
	public boolean transferAccounts(int uid, int rinid, double money) {
		boolean result = false;
		AssetsDao ad = new AssetsDaoImpl();
		Assets assets_o=ad.select(uid).get(0);
		Assets assets_i=ad.select(rinid).get(0);
		Double balance_o=assets_o.getBalance();
		Double balance_i=assets_i.getBalance();
		if(balance_o>money){
			ad.updateBalance(uid, balance_o-money);
			ad.updateBalance(rinid, balance_i+money);
			result=true;
		}
		return result;
	}
}
