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
public class IdealRecommendationVO {
	private int recommendationIdx;
	private int clientIdx;
	private int recommendedPeopleIdx;
	private Date recommendationDate;
	private int sendOrNot;
	private Date sendTime;
	private LikeReceiveVO likeReceive;
	private ClientDetailInfoVO clientDetailInfo;

	public LikeReceiveVO getLikeReceive() {
		return likeReceive;
	}
	public void setLikeReceive(LikeReceiveVO likeReceive) {
		this.likeReceive = likeReceive;
	}
	public Date getSendTime() {
		return sendTime;
	}
	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}
	public ClientDetailInfoVO getClientDetailInfo() {
		return clientDetailInfo;
	}
	public void setClientDetailInfo(ClientDetailInfoVO clientDetailInfo) {
		this.clientDetailInfo = clientDetailInfo;
	}
	public int getRecommendationIdx() {
		return recommendationIdx;
	}
	public void setRecommendationIdx(int recommendationIdx) {
		this.recommendationIdx = recommendationIdx;
	}
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public int getRecommendedPeopleIdx() {
		return recommendedPeopleIdx;
	}
	public void setRecommendedPeopleIdx(int recommendedPeopleIdx) {
		this.recommendedPeopleIdx = recommendedPeopleIdx;
	}
	public Date getRecommendationDate() {
		return recommendationDate;
	}
	public void setRecommendationDate(Date recommendationDate) {
		this.recommendationDate = recommendationDate;
	}
	public int getSendOrNot() {
		return sendOrNot;
	}
	public void setSendOrNot(int sendOrNot) {
		this.sendOrNot = sendOrNot;
	}
	
	
}
