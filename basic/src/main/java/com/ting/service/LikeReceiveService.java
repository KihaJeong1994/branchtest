package com.ting.service;

import java.util.List;

import com.ting.domain.LikeReceiveVO;

public interface LikeReceiveService {
	void insertLikeReceive(LikeReceiveVO vo);


	void updateLikeReceive();
	void updateReLikeReceive();

	void deleteLikeReceive(LikeReceiveVO vo);

	LikeReceiveVO getLikeReceive(LikeReceiveVO vo);

	List<LikeReceiveVO> getLikeReceiveList(LikeReceiveVO vo);
	

	

}
