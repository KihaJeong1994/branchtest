package com.ting.dao;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;

public interface ClientDetailInfoDAO {
	public void insertClientDetailInfo(ClientDetailInfoVO vo);
	
	//사진 추가
	public void updatePhotoClientDetailInfo(ClientDetailInfoVO vo);

	// 글 수정
	public void updateClientDetailInfo(ClientDetailInfoVO vo);

	// 글 삭제
	public void deleteClientDetailInfo(ClientDetailInfoVO vo);

	// 글 상세 조회
	public ClientDetailInfoVO getClientDetailInfo(ClientDetailInfoVO vo);

	// 글 목록 조회
	public List<ClientDetailInfoVO> getClientDetailInfoList(ClientDetailInfoVO vo);
	
	//하트 개수
	public int getTotalHeart(ClientDetailInfoVO vo);
	
	// 하트 소모
	public	void reduceTotalHeart(ClientDetailInfoVO vo);
	
	// 하트 증가
	public	void increaseTotalHeartPerDay();
}
