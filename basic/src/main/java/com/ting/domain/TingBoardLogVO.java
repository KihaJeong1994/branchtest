package com.ting.domain;

public class TingBoardLogVO {
	/*
	 * create table tingBoardLog(
num number constraint tingBoardLog_num_pk primary key,
boardIdx number(5),
clientIdx number(5),
reip varchar2(30),
uagent varchar2(100),
sstime date default sysdate,
constraint tingBoardLogs_board_fk foreign key(boardIdx)
references tingBoard(boardIdx),
constraint tingBoardLogs_client_fk foreign key(clientIdx)
references clientinfo(clientIdx)
);
	 * */
	
	private int num;
	private int boardIdx;
	private int clientIdx;
	private String reip,uagent;
	private String sstime, eetime;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	
}
