package com.zhongxing.server.impl;

import java.util.List;

import com.zhongxing.dao.CardDao;
import com.zhongxing.dao.Impl.CardDaoImpl;
import com.zhongxing.entity.Card;
import com.zhongxing.server.CardAdministration;

public class CardAdministrationImpl implements CardAdministration {

	@Override
	public List<Card> select(int uid) {
		CardDao cd = new CardDaoImpl();
		return cd.select(uid);
	}

	@Override
	public boolean insert(Card card) {
		boolean reault = false;
		CardDao cd = new CardDaoImpl();
		if(card!=null){
			Integer uid=card.getUid();
			if(cd.select(uid).size()<5){
				cd.insert(uid, card.getUcard());
				reault = true;//插入成功返回true  否则返回false。
			}
		}
		return reault;
	}

	@Override
	public boolean delete(Card card) {
		CardDao cd = new CardDaoImpl();
		if(card!=null){
			return cd.delete(card.getUid(), card.getUcard());
		}
		return false;
	}

}
