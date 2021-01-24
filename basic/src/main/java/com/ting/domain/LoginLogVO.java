package com.ting.domain;

public class LoginLogVO {
	private int num;
	 private int idxn;
	 private String reip,uagent;
	 private String sstime, eetime;
	 private String status;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getIdxn() {
		return idxn;
	}
	public void setIdxn(int idxn) {
		this.idxn = idxn;
	}
	public String getReip() {
		return reip;
	}
	public void setReip(String reip) {
		this.reip = reip;
	}
	public String getUagent() {
		return uagent;
	}
	public void setUagent(String uagent) {
		this.uagent = uagent;
	}
	public String getSstime() {
		return sstime;
	}
	public void setSstime(String sstime) {
		this.sstime = sstime;
	}
	public String getEetime() {
		return eetime;
	}
	public void setEetime(String eetime) {
		this.eetime = eetime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
