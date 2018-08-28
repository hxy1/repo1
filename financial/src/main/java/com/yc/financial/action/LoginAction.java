package com.yc.financial.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yc.financial.service.LoginService;
import com.yc.financial.vo.UsersVO;

@Controller
public class LoginAction {
	
	@Resource
	private LoginService loginService;
	
	@RequestMapping("/login.do")
	public String login(String op,UsersVO users,HttpSession session,Model model){
		if("login".equals(op)){
			List<UsersVO> list=loginService.Login(users);
			model.addAttribute("list", list);
			if(list.size()>0){
				session.setAttribute("users", list.get(0));
				return "index";
			}else{
				return "404";
			}
		}else{
			return "404";
		}
	}
}
