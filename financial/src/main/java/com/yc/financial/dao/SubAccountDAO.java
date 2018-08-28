package com.yc.financial.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.financial.vo.DetailsVO;
import com.yc.financial.vo.accountypeVO;

@Repository
public interface SubAccountDAO {
	
	@Select("SELECT * FROM ACCOUNTYPE")
	public List<accountypeVO> selectAccountType();

	@Insert("INSERT INTO DETAILS VALUES(NULL,#{types},#{project},#{uname},"
			+ "#{reportime},NULL,#{money},#{number},#{allmoney},#{state}) ")
	public int insertaccount(DetailsVO detail);

}
