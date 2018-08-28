package com.yc.financial.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.financial.service.RegistService;
import com.yc.financial.util.MD5Utils;
import com.yc.financial.vo.UsersVO;

@Controller
public class RegistAction {

	private MD5Utils md5;
	@Resource
	private RegistService registservice;
	
	@RequestMapping(value="/regist.do",produces = "application/json;charset=utf-8")
	public String regist(String op,UsersVO users,Model model,HttpSession session,HttpServletRequest request){
		List<UsersVO> list1 = registservice.selectByAccount(users);
		if(list1.size()>0){
			return "login";
		}else{	
			String account = request.getParameter("account");
			session.setAttribute("account", account);
			
			String upwd = md5.GetMD5Code(request.getParameter("upwd"));
			users.setUpwd(upwd);
			Integer list = registservice.Regist(users);
		}
			return "addInfo";
	}
	
	@RequestMapping(value="/verAccount")
	public @ResponseBody String verAccount(String account){
		UsersVO users = new UsersVO();
		users.setAccount(account);
		List<UsersVO> list1 = registservice.selectByAccount(users);
		if(list1.size()>0){
			//账号已经存在，不能被注册
			return "no";
		}else{
			return "ok";
		}
	}
}
