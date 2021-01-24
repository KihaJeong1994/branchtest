package com.ting.domain;

import java.util.Date;

public class Chat_VO {
	


	private int chat_idx;
	private int to_id;
	private int from_id;
	private String content;
	private int read;
	private Date chattime;
	
	public int getChat_idx() {
		return chat_idx;
	}
	public void setChat_idx(int chat_idx) {
		this.chat_idx = chat_idx;
	}
	public int getTo_id() {
		return to_id;
	}
	public void setTo_id(int to_id) {
		this.to_id = to_id;
	}
	public int getFrom_id() {
		return from_id;
	}
	public void setFrom_id(int from_id) {
		this.from_id = from_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRead() {
		return read;
	}
	public void setRead(int read) {
		this.read = read;
	}
	public Date getChattime() {
		return chattime;
	}
	public void setChattime(Date chattime) {
		this.chattime = chattime;
	}
	
	
	
	


	
	
	

}
