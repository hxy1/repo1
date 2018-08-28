package com.yc.financial.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface ModifyPwdDAO {
	
	@Update("UPDATE USERS SET UPWD = #{upwd} WHERE EMAIL=#{email}")
	public Integer update(@Param("upwd")String upwd,@Param("email")String email);

	@Select("SELECT * FROM USERS WHERE EMAIL=#{email}")
	public Integer selectByEmail(String email);
	
}
