package com.ting.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.ting.domain.GoodsVO;
import com.ting.service.GoodsService;


@Controller
public class GoodsController {

	
	 @Autowired 
	 private GoodsService goodsService;
	  
	//유료 아이템 목록 출력	
	@RequestMapping("/Premium_0_main")
	public String getGoodsList(GoodsVO vo, Model m) {	
		List<GoodsVO> result = goodsService.getGoodsList(vo);
		m.addAttribute("GoodsList", result);
		return "/Premium_0_main";
	}
}
