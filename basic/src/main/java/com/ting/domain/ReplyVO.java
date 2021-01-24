package com.ting.domain;

import java.util.Date;

/*
 	commentIdx number(5), 
	boardIdx number(5),
    clientIdx number(5),
	content varchar2(1000) not null,
	regDate date,
 */
public class ReplyVO {
	
	private int commentIdx, boardIdx, clientIdx;
	private String content, regId;
	private Date regDate;
	private String nickName;
	
	
	
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public int getCommentIdx() {
		return commentIdx;
	}
	public void setCommentIdx(int commentIdx) {
		this.commentIdx = commentIdx;
	}
	public int getBoardIdx() {
		return boardIdx;
	}
	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
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
	
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	@Override
	public String toString() {
		return "ReplyVO [commentIdx=" + commentIdx + ", boardIdx=" + boardIdx + ", clientIdx=" + clientIdx + ", content=" + content + ", regDate="
				+ regDate + "]";
	}
}
