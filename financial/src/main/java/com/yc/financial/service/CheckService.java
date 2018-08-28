package com.yc.financial.service;

import java.util.List;

import com.yc.financial.vo.DetailsVO;
import com.yc.financial.vo.PayrollVO;

public interface CheckService {

	/**
	 * 查询凭证表
	 * @param details
	 * @return
	 */
	public List<DetailsVO> selectByCheckVoucher(DetailsVO details);
	
	/**
	 * 查询工资表
	 * @param payroll
	 * @return
	 */
	public List<PayrollVO> selectBySalary(PayrollVO payroll);
	
	/**
	 * 查询凭证表总数
	 * @param details
	 * @return
	 */
	public int countCountVoucher(DetailsVO details);
	
	/**
	 * 查询工资表总数
	 * @param payroll
	 * @return
	 */
	public int countCountSalary(PayrollVO payroll);
	
	/**
	 * 查询指定类型
	 * @param types
	 * @return
	 */
	public List<DetailsVO> selectTypes(String types);
	
}
