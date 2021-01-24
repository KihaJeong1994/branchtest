package com.ting.domain;

import java.util.Date;

public class IdealTypeVO {
/*
 * CREATE TABLE idealType 
( 
    clientIdx       NUMBER(4)   NOT NULL,
    minAge         NUMBER(4),
    maxAge         NUMBER(4),
    minSalary         NUMBER(4),
    maxSalary         NUMBER(4),
    minDistance         NUMBER(4),
    maxDistance         NUMBER(4),
    minHeight         NUMBER(4),
    maxHeight         NUMBER(4),
    religion         VARCHAR2(9),
    education         VARCHAR2(9),
    bodyShape         VARCHAR2(9),
    drink         VARCHAR2(9),
    smoke         VARCHAR2(9),
    lastUpdate         date,
   CONSTRAINT idealType_pk PRIMARY KEY (clientIdx)

);
 * */
	private int clientIdx;
	private int minAge;
	private int maxAge;
	private int minDistance;
	private int maxDistance;
	private int minHeight;
	private int maxHeight;
	private String religion;
	private String education;
	private String bodyShape;
	private String drink;
	private String smoke;
	private Date lastUpdate;
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public int getMinAge() {
		return minAge;
	}
	public void setMinAge(int minAge) {
		this.minAge = minAge;
	}
	public int getMaxAge() {
		return maxAge;
	}
	public void setMaxAge(int maxAge) {
		this.maxAge = maxAge;
	}
	
	public int getMinDistance() {
		return minDistance;
	}
	public void setMinDistance(int minDistance) {
		this.minDistance = minDistance;
	}
	public int getMaxDistance() {
		return maxDistance;
	}
	public void setMaxDistance(int maxDistance) {
		this.maxDistance = maxDistance;
	}
	public int getMinHeight() {
		return minHeight;
	}
	public void setMinHeight(int minHeight) {
		this.minHeight = minHeight;
	}
	public int getMaxHeight() {
		return maxHeight;
	}
	public void setMaxHeight(int maxHeight) {
		this.maxHeight = maxHeight;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getBodyShape() {
		return bodyShape;
	}
	public void setBodyShape(String bodyShape) {
		this.bodyShape = bodyShape;
	}
	public String getDrink() {
		return drink;
	}
	public void setDrink(String drink) {
		this.drink = drink;
	}
	public String getSmoke() {
		return smoke;
	}
	public void setSmoke(String smoke) {
		this.smoke = smoke;
	}
	public Date getLastUpdate() {
		return lastUpdate;
	}
	public void setLastUpdate(Date lastUpdate) {
		this.lastUpdate = lastUpdate;
	}
	
	
	
}
