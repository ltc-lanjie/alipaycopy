package com.zhongxing.entity;
/**
 * 银行卡 卡，id
 * @author ZhongXing
 *
 */
public class Card {
	private Integer uid;
	private String ucard;
	public Card() {
		super();
	}
	public Card(Integer uid, String ucard) {
		super();
		this.uid = uid;
		this.ucard = ucard;
	}
	@Override
	public String toString() {
		return "Card [uid=" + uid + ", ucard=" + ucard + "]";
	}
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUcard() {
		return ucard;
	}
	public void setUcard(String ucard) {
		this.ucard = ucard;
	}
}
