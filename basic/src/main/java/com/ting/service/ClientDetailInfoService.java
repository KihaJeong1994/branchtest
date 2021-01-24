package com.ting.service;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;

public interface ClientDetailInfoService {
	void insertClientDetailInfo(ClientDetailInfoVO vo);

	// 글 수정
	void updateClientDetailInfo(ClientDetailInfoVO vo);
	
	//사진 추가
	void updatePhotoClientDetailInfo(ClientDetailInfoVO vo);

	// 글 삭제
	void deleteClientDetailInfo(ClientDetailInfoVO vo);

	// 글 상세 조회
	ClientDetailInfoVO getClientDetailInfo(ClientDetailInfoVO vo);

	// 글 목록 조회
	List<ClientDetailInfoVO> getClientDetailInfoList(ClientDetailInfoVO vo);
	
	// 하트 소모
	void reduceTotalHeart(ClientDetailInfoVO vo);
	
	//하트 개수
	int getTotalHeart(ClientDetailInfoVO vo);
	
	// 하트 증가
	void increaseTotalHeartPerDay();
}
