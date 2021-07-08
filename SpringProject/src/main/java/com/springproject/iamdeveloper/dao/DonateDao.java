package com.springproject.iamdeveloper.dao;

import java.util.ArrayList;

import com.springproject.iamdeveloper.dto.DonateDto;

public interface DonateDao {

	//도네이션 합계
	public ArrayList<DonateDto> donation();
	
	//도네이션 입력
	public void donateClick(String DONATE_AMOUNT);
}
