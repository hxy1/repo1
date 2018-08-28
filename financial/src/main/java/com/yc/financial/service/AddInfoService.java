package com.yc.financial.service;

import java.util.List;

import com.yc.financial.vo.UsersVO;

public interface AddInfoService {

	public UsersVO AddInfo(UsersVO users);
	
	public UsersVO selectByUid(UsersVO users);
	
}
