package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.LikeReceiveVO;

@Repository("likeReceiveDAO")
public class LikeReceiveDAOImpl implements LikeReceiveDAO{
	@Autowired //�옄�룞�쑝濡� 二쇱엯�븯�뀖�꽮�닔�엳寃뚰븯�뒗 �뒪�떚而�
	private SqlSessionTemplate mybatis; //�뒪�봽留곸씠 留뚮뱺�떎�쓬�뿉 �굹�븳�뀒 二쇱엯

	public void insertLikeReceive(LikeReceiveVO vo) {
		System.out.println("===> Mybatis insertLikeReceive() �샇異�");
		mybatis.insert("LikeReceiveDAO.insertLikeReceive", vo);
	}

	public void updateLikeReceive() {
		System.out.println("===> Mybatis updateLikeReceive() �샇異�");
		mybatis.update("LikeReceiveDAO.updateLikeReceive");
	}
	public void updateReLikeReceive() {
		System.out.println("===> Mybatis updateReLikeReceive() �샇異�");
		mybatis.update("LikeReceiveDAO.updateReLikeReceive");
	}

	public void deleteLikeReceive(LikeReceiveVO vo) {
		System.out.println("===> Mybatis deleteLikeReceive() �샇異�");
		mybatis.delete("LikeReceiveDAO.deleteLikeReceive", vo);
	}

	public LikeReceiveVO getLikeReceive(LikeReceiveVO vo) {
		System.out.println("===> Mybatis getLikeReceive() �샇異�");
		return mybatis.selectOne("LikeReceiveDAO.getLikeReceive", vo);
	}

	public List<LikeReceiveVO> getLikeReceiveList(LikeReceiveVO vo) {
		System.out.println("===> Mybatis getLikeReceiveList() �샇異�");
		return mybatis.selectList("LikeReceiveDAO.getLikeReceiveList", vo);
	}


}
