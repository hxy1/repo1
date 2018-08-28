package com.yc.financial.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.yc.financial.vo.UsersVO;
/**
 * 对用户方面的Dao操作
 * @author 朱毅东
 *
 */
@Repository
public interface SelUserlistDAO {
	//查看员工列表
	@Select("SELECT * FROM USERS")
	public List<UsersVO> selectUserlist();
	
	@Select("SELECT * FROM USERS WHERE UNAME LIKE CONCAT('%', #{UNAME},'%') ")
	public List<UsersVO> selByUname(String uname);
	
	//pages指返回记录行的偏移量   rows指定返回记录行的最大数目
	@Select("SELECT * FROM USERS LIMIT #{PAGES},#{ROWS}")
	public List<UsersVO> seluserPage(int pages, int rows);
	
	//查总记录数
	@Select("SELECT COUNT(*) CNT FROM USERS WHERE 1=1")
	public long count();
}
