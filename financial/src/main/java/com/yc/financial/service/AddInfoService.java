package com.yc.financial.service;

import java.util.List;

import com.yc.financial.vo.UsersVO;

public interface AddInfoService {

	public Integer AddInfo(UsersVO users);
	
	public UsersVO selectByUid(UsersVO users);
	
}
