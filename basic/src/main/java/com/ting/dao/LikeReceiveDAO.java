package com.ting.dao;

import java.util.List;

import com.ting.domain.LikeReceiveVO;

public interface LikeReceiveDAO {
	
	public void insertLikeReceive(LikeReceiveVO vo);

	// 湲� �닔�젙
	public void updateLikeReceive();

	public void updateReLikeReceive();

	// 湲� �궘�젣
	public void deleteLikeReceive(LikeReceiveVO vo);

	// 湲� �긽�꽭 議고쉶
	public LikeReceiveVO getLikeReceive(LikeReceiveVO vo);

	// 湲� 紐⑸줉 議고쉶
	public List<LikeReceiveVO> getLikeReceiveList(LikeReceiveVO vo);
	

}
