package com.yc.financial.dao;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Controller;

import com.yc.financial.vo.UsersVO;

@Controller
public interface ModifyDataDAO {
	
	@Select("SELECT * FROM USERS WHERE UID=#{uid}")
	public UsersVO selectByUid(UsersVO user);

	@Update("UPDATE USERS SET UNAME=#{uname},PHONE=#{phone},EMAIL=#{email},DID=#{did},SEX=#{sex},UPIC=#{upic} WHERE UID=#{uid}")
	public Integer update(UsersVO user);
	
}
