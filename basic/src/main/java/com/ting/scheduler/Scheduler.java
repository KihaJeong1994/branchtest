package com.ting.scheduler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.ting.service.ClientDetailInfoService;

//�̵���
@Component
public class Scheduler {
	
	@Autowired
	ClientDetailInfoService clientDetailInfoService;
	
	//매일 아침 9시 하트 수 증가
	@Scheduled(cron = "0 0 10 * * *")
	public void increaseTotalHeartPerDay() {
		clientDetailInfoService.increaseTotalHeartPerDay();
		System.out.println("하트개수증가");
	}

}
