package com.yc.financial.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.yc.financial.vo.UsersVO;

@Repository
public interface UsersDAO {
	
	@Select("SELECT * FROM USERS WHERE ACCOUNT=#{account} AND UPWD=#{upwd}")
	List<UsersVO> selectByLogin(UsersVO users);
	
	@Insert("INSERT INTO USERS (ACCOUNT,UPWD,SEX) VALUES(#{account},#{upwd},#{sex})")
	Integer selectByRegist(UsersVO users);
	
	@Update("UPDATE USERS SET UNAME=#{uname},PHONE=#{phone},EMAIL=#{email},DID=#{did},SEX=#{sex},UPIC=#{upic} WHERE ACCOUNT=#{account}")
	Integer AddInfo(UsersVO users);
	
	@Select("SELECT * FROM USERS WHERE UID=#{uid}")
	public UsersVO selectByUid(UsersVO user);

	@Select("SELECT * FROM USERS WHERE ACCOUNT=#{account}")
	List<UsersVO> selectByAccount(UsersVO users);
	
}
