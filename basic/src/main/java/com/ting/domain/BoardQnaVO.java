package com.ting.domain;

import java.util.Date;

//VO(Value Object) : �뀒�씠釉붽뎄議곗� �쑀�궗

public class BoardQnaVO {
	private int boardIdx;
	private String title;
	private int clientIdx;
	private String content;
	private Date regDate;
	private int boardTypeIdx;
	private int tingIdx;
	
	public int getTingIdx() {
		return tingIdx;
	}
	public void setTingIdx(int tingIdx) {
		this.tingIdx = tingIdx;
	}
	public int getBoardIdx() {
		return boardIdx;
	}
	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getBoardTypeIdx() {
		return boardTypeIdx;
	}
	public void setBoardTypeIdx(int boardTypeIdx) {
		this.boardTypeIdx = boardTypeIdx;
	}
	
	
}