package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.ClientInterestDAOImpl;
import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.ClientInterestVO;
import com.ting.domain.InterestVO;


@Service("clientInterestService")
public class ClientInterestServiceImpl implements ClientInterestService{

	//dao불러오는곳
	@Autowired
	private ClientInterestDAOImpl clientInterestDAO;
	
	//회원관심사 insert
	public void insertClientInterest(ClientInterestVO vo) {
		clientInterestDAO.insertClientInterest(vo);
	}	
	
	//회원관심사 delete
	public void deleteClientInterest(ClientInterestVO vo) {
		clientInterestDAO.deleteClientInterest(vo);
	}

	public List<ClientInterestVO> getClientInterestList(ClientInterestVO vo) {
		System.out.println("서비스진입");
		List<ClientInterestVO> result = clientInterestDAO.getClientInterestList(vo);
		return result;
	}
	
	
}
