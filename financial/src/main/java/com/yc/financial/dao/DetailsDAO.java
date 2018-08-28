package com.yc.financial.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.financial.vo.DetailsVO;
import com.yc.financial.vo.PayrollVO;

@Repository
public interface DetailsDAO {
	
	/**
	 * 查询凭证表
	 * @param details
	 * @return
	 */
	@Select("SELECT * FROM DETAILS")
	List<DetailsVO> selectByCheckVoucher(DetailsVO details);

	/**
	 * 查询凭证表总数
	 * @param details
	 * @return
	 */
	@Select("SELECT COUNT(*) FROM DETAILS")
	int countCountVoucher(DetailsVO details);
	
	/**
	 * 查询工资表
	 * @param payroll
	 * @return
	 */
	@Select("SELECT * FROM PAYROLL")
	List<PayrollVO> selectBySalary(PayrollVO payroll);
	
	/**
	 * 查询工资表总数
	 * @param payroll
	 * @return
	 */
	@Select("SELECT COUNT(*) FROM PAYROLL")
	int countCountSalary(PayrollVO payroll);
	
	/**
	 * 查询指定类型
	 * @param types
	 * @return
	 */
	@Select("select * from details where types= #{types}")
	List<DetailsVO> selectTypes(String types);
	
	List<DetailsVO> selectByPag(@Param("id")Integer id,@Param("time")String time,@Param("start")Integer start,@Param("size")Integer size);
	
}
