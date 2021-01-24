package com.ting.dao;

import java.util.List;

import com.ting.domain.IdealTypeVO;

public interface IdealTypeDAO {
	public void insertIdealType(IdealTypeVO vo);

	// 글 수정
	public void updateIdealType(IdealTypeVO vo);

	// 글 삭제
	public void deleteIdealType(IdealTypeVO vo);

	// 글 상세 조회
	public IdealTypeVO getIdealType(IdealTypeVO vo);

	// 글 목록 조회
	public List<IdealTypeVO> getIdealTypeList(IdealTypeVO vo);
}
