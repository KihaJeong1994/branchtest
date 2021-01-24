package com.ting.domain;

public class GoodsVO {

/*	create table goods(
			goodIdx number(5),
			goodName varchar2(20),
			price varchar2(20),
			constraint pf_goods primary key (goodIdx)
			);
*/
	private int goodIdx;
	private String goodName;
	private int heartcnt;
	private int price;
	
	
	
	public int getGoodIdx() {
		return goodIdx;
	}
	public void setGoodIdx(int goodIdx) {
		this.goodIdx = goodIdx;
	}
	public String getGoodName() {
		return goodName;
	}
	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}
	public int getHeartcnt() {
		return heartcnt;
	}
	public void setHeartcnt(int heartcnt) {
		this.heartcnt = heartcnt;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
	
	
	
	
	
}
