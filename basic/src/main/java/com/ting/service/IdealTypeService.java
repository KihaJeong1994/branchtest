package com.ting.service;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.IdealTypeVO;

public interface IdealTypeService {
	void insertIdealType(IdealTypeVO vo);

	// 글 수정
	void updateIdealType(IdealTypeVO vo);

	// 글 삭제
	void deleteIdealType(IdealTypeVO vo);

	// 글 상세 조회
	IdealTypeVO getIdealType(IdealTypeVO vo);

	// 글 목록 조회
	List<IdealTypeVO> getIdealTypeList(IdealTypeVO vo);
}
