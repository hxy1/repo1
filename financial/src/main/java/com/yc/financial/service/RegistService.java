package com.yc.financial.service;



import java.util.List;

import com.yc.financial.vo.UsersVO;

public interface RegistService {

	public Integer Regist(UsersVO users);
	
	List<UsersVO> selectByAccount(UsersVO users);
	
}
