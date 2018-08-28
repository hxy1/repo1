package com.yc.financial.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.financial.dao.DetailsDAO;
import com.yc.financial.service.CheckService;
import com.yc.financial.vo.DetailsVO;
import com.yc.financial.vo.PayrollVO;

@Service
public class CheckServiceImpl implements CheckService{

	@Autowired
	private DetailsDAO ddao;

	public List<DetailsVO> selectByCheckVoucher(DetailsVO details) {
		return ddao.selectByCheckVoucher(details);
	}

	@Override
	public int countCountVoucher(DetailsVO details) {
		return ddao.countCountVoucher(details);
	}

	@Override
	public List<PayrollVO> selectBySalary(PayrollVO payroll) {
		return ddao.selectBySalary(payroll);
	}
	
	@Override
	public int countCountSalary(PayrollVO payroll) {
		return ddao.countCountSalary(payroll);
	}

	@Override
	public List<DetailsVO> selectTypes(String types) {
		return ddao.selectTypes(types);
	}

}
