package com.ting.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ClientDetailInfoVO {
	private int clientIdx;
	private String name;
	private String nickname;
	private String gender;
	private String job;
	private int age;

	private Double latitude;
	private Double longitude;
	private String religion;
	private String education;
	private int height;
	private String bodyShape;
	private String drink;
	private String smoke;
	private String photo;
	private int totalHeart;
	
	private Date lastUpdate;
	private String selfIntro;
	private Fun_Mbtitest_0_VO funvo;
	private LikeReceiveVO likeReceive;
	

	
	public LikeReceiveVO getLikeReceive() {
		return likeReceive;
	}
	public void setLikeReceive(LikeReceiveVO likeReceive) {
		this.likeReceive = likeReceive;
	}
		//******************** 파일 추가를 위해 삽입 *****************************
		MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
		
		public MultipartFile getFile() {
			return file;
		}
		public void setFile(MultipartFile file) {
			this.file = file;
			
			// 업로드 파일 접근
			if(! file.isEmpty()){
				System.out.println("파일시도");
				this.photo = file.getOriginalFilename();
				
				// 해당 경로로 변경
					File f = new File("C:\\Users\\Kiha\\Documents\\workspace-sts-3.9.11.RELEASE\\ting_version3\\src\\main\\webapp\\resources\\img_photo\\"+ photo);
					//				File f = new File("D:\\다운로드\\workspace\\ws_03\\shoppingmall\\src\\main\\webapp\\resources\\upload\\"+ product_fname);
				try {
					System.out.println("사진시도");
					file.transferTo(f);
					
				} catch (IllegalStateException e) {				
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			}
		}

		//******************** 파일 추가를 위해 삽입 *****************************
	
	public int getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(int clientIdx) {
		this.clientIdx = clientIdx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	public Double getLongitude() {
		return longitude;
	}
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
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
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getTotalHeart() {
		return totalHeart;
	}
	public void setTotalHeart(int totalHeart) {
		this.totalHeart = totalHeart;
	}
	public Date getLastUpdate() {
		return lastUpdate;
	}
	public void setLastUpdate(Date lastUpdate) {
		this.lastUpdate = lastUpdate;
	}
	public String getSelfIntro() {
		return selfIntro;
	}
	public void setSelfIntro(String selfIntro) {
		this.selfIntro = selfIntro;
	}
	public Fun_Mbtitest_0_VO getFunvo() {
		return funvo;
	}
	public void setFunvo(Fun_Mbtitest_0_VO funvo) {
		this.funvo = funvo;
	}
	
	
	
	
	
	

}
