package com.ting.domain;

import java.sql.Date;

public class PaymentVO {

	
/*	create table payment(
			clientIdx number(5),
			goodIdx number(5),
			when date,
			method varchar2(20),
			constraint payment_fk foreign key(clientIdx) references clientInfo(clientIdx),
			constraint payment_fk_goods foreign key(goodIdx) references goods(goodIdx)
			);
*/
	
	int clientIdx;
	int goodIdx;
	String method;
	Date when;
	GoodsVO goods;
	
	
	public GoodsVO getGoods() {
		return goods;
	}
	public void setGoods(GoodsVO goods) {
		this.goods = goods;
	}
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public int getGoodIdx() {
		return goodIdx;
	}
	public void setGoodIdx(int goodIdx) {
		this.goodIdx = goodIdx;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public Date getWhen() {
		return when;
	}
	public void setWhen(Date when) {
		this.when = when;
	}
	
	
	
}
