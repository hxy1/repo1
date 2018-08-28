package com.yc.financial.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yc.financial.dao.SubAccountDAO;
import com.yc.financial.service.SubAccountService;
import com.yc.financial.vo.DetailsVO;
import com.yc.financial.vo.accountypeVO;

@Service
public class SubAccountServiceImpl implements SubAccountService {
	
	@Resource
	private SubAccountDAO dao;

	@Override
	public List<accountypeVO> selectAccountType() {
		
		return dao.selectAccountType();
	}

	@Override
	public int insertaccount(DetailsVO detail) {
		
		return dao.insertaccount(detail);
	}

}
