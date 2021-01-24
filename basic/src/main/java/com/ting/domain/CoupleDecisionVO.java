package com.ting.domain;

import java.util.Date;

public class CoupleDecisionVO {
	private int coupleIdx;
	private int clientIdx;
	private int otherIdx;
	private Date decisionTime;
	
	/*CREATE TABLE coupleDecision
( 
    coupleIdx       NUMBER(4)	primary key,
    clientIdx       NUMBER(4),
    otherIdx        NUMBER(4),
    decisionTime     Date,
    CONSTRAINT clientIdx_fk2 FOREIGN KEY(clientIdx)
    REFERENCES clientDetailInfo(clientIdx)
);
create sequence couple_seq;*/
	
	
	public int getCoupleIdx() {
		return coupleIdx;
	}
	public void setCoupleIdx(int coupleIdx) {
		this.coupleIdx = coupleIdx;
	}
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public int getOtherIdx() {
		return otherIdx;
	}
	public void setOtherIdx(int otherIdx) {
		this.otherIdx = otherIdx;
	}
	public Date getDecisionTime() {
		return decisionTime;
	}
	public void setDecisionTime(Date decisionTime) {
		this.decisionTime = decisionTime;
	}
}