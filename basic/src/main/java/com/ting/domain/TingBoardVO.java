package com.ting.domain;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
/*
boardIdx number(5) constraint boardIdx primary key,
title varchar2(50),
clientIdx number(5),
content varchar2(2000),
regdate date,
tag varchar2(250), 
originalContent varchar2(2000),
*/

import org.springframework.web.multipart.MultipartFile;

/*create table tingBoard(
boardIdx number(5) constraint boardIdx primary key,
title varchar2(50) NOT NULL,
clientIdx number(5) NOT NULL,
content varchar2(2000),
regdate date,
tag varchar2(250),
originalcontent varchar2(2000) NOT NULL,
frame varchar2(100),
fsize number,
constraint tingBoard_clientIdx foreign key(clientIdx) REFERENCES clientInfo(clientIdx)
);

create sequence tingBoard_seq
increment by 1
start with 1;
*/

public class TingBoardVO {

	private int boardIdx;
	private String title;
	private int clientIdx;
	private String content;
	private Date regdate;
	private String tag;
	private String originalContent;
	private String fname;
	private String nickName;
	private long fsize;
	

	//*************************************************
	MultipartFile file;	// write.jsp�뿉 �뙆�씪泥⑤��떆 name="file"怨� �룞�씪�븳 蹂��닔紐�
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// �뾽濡쒕뱶 �뙆�씪 �젒洹�
		if(! file.isEmpty()){
			this.fname = file.getOriginalFilename();
			this.fsize = file.getSize();
			
			//***********************************************
			// �빐�떦 寃쎈줈濡� 蹂�寃�
			File f = new File("D:\\00_프로젝트\\01프로젝트진행중\\workspace\\ting_mypage\\src\\main\\webapp\\resources\\upload\\"+fname);
			
			try {
				System.out.println("에러1");
				file.transferTo(f);
				System.out.println("에러2");
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	
	
	
	
	
	
	
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getOriginalContent() {
		return originalContent;
	}
	public void setOriginalContent(String originalContent) {
		this.originalContent = originalContent;
	}
	
	

	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public long getFsize() {
		return fsize;
	}
	public void setFsize(long fsize) {
		this.fsize = fsize;
	}
	
	
	
	
	
	
/*

boardIdx number(20) constraint boardIdx primary key,
title varchar2(50),
clientIdx number(20),
content varchar2(255),
regdate date,
boardTypeIdx number(3),

public class TingBoardVO {

	private int boardIdx;
	private String title;
	private int clientIdx;
	private String content;
	private Date regdate;
	private int boardTypeIdx;
	
	
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getBoardTypeIdx() {
		return boardTypeIdx;
	}
	public void setBoardTypeIdx(int boardTypeIdx) {
		this.boardTypeIdx = boardTypeIdx;
	}
	
	*/
	
	
	
}
