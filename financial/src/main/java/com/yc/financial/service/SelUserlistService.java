package com.yc.financial.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.financial.vo.UsersVO;

/**
 * 用户方面的Service
 * @author 朱毅东
 *
 */
public interface SelUserlistService {
	//查看员工列表
	public List<UsersVO> selectUserlist();
	
	//根据员工姓名模糊查询
	public List<UsersVO> selByUname(String uname);
	
	/**
	 * 员工列表分页查询的方法
	 * @param pages 当前页
	 * @param total	一共多少条记录
	 * @return
	 */
	public List<UsersVO> userPage(int pages, int rows);
	
	//查询总记录数
	public int count(UsersVO users);
	
	/**
	 * 
	 * @param uid	员工id
	 * @param start	查询开始的地方
	 * @param size	查多少条
	 * @return
	 */
	List<UsersVO> selectByPag(@Param("uname")String uname,Integer start,Integer limit);
}
