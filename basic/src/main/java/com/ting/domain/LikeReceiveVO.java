package com.ting.domain;

import java.sql.Date;

/*
	create table likeReceive

(   likeIdx number primary key,
    clientIdx number(4) NOT NULL,
    sendIdx number(4) NOT NULL,
    receiveTime date,
    successornot default 0, <-문법기억안남,,,
    constraint clientIdx_fk foreign key(clientIdx)
	references clientDetailInfo(clientIdx);
);
create sequence likeIdx_seq ;


 */
public class LikeReceiveVO {
	private int likeIdx;
	private int clientIdx;
	private int sendIdx;
	private Date receiveTime;
	private int successOrNot;
	private ClientDetailInfoVO clientDetailInfo;
	
	
	public ClientDetailInfoVO getClientDetailInfo() {
		return clientDetailInfo;
	}
	public void setClientDetailInfo(ClientDetailInfoVO clientDetailInfo) {
		this.clientDetailInfo = clientDetailInfo;
	}
	public Date getReceiveTime() {
		return receiveTime;
	}
	public void setReceiveTime(Date receiveTime) {
		this.receiveTime = receiveTime;
	}
	
	public int getSuccessOrNot() {
		return successOrNot;
	}
	public void setSuccessOrNot(int successOrNot) {
		this.successOrNot = successOrNot;
	}
	
	
	public int getLikeIdx() {
		return likeIdx;
	}
	public void setLikeIdx(int likeIdx) {
		this.likeIdx = likeIdx;
	}
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public int getSendIdx() {
		return sendIdx;
	}
	public void setSendIdx(int sendIdx) {
		this.sendIdx = sendIdx;
	}
	
	
}
