package com.ting.domain;

import java.sql.Date;

/*
	clientIdx varchar2(30) NOT NULL,
    email varchar2(50),
    password varchar2(30) NOT NULL,
    phone varchar2(50) NOT NULL,
    regdate date,
 */
public class ClientInfoVO {
	private int clientIdx;
	private String email;
	private String password;
	private String phone;
	private Date regdate;
	private ClientDetailInfoVO clientDetailInfo;
	

	public ClientDetailInfoVO getClientDetailInfo() {
		return clientDetailInfo;
	}
	public void setClientDetailInfo(ClientDetailInfoVO clientDetailInfo) {
		this.clientDetailInfo = clientDetailInfo;
	}
	@Override
	public String toString() {
		return "ClientInfoVO [clientIdx=" + clientIdx + ", email=" + email + ", password=" + password + ", phone="
				+ phone + ", regdate=" + regdate + "]";
	}
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
}
