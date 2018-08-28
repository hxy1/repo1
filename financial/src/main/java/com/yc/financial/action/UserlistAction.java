package com.yc.financial.action;

import java.io.IOException;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.financial.service.SelUserlistService;
import com.yc.financial.vo.UsersVO;

@Controller
public class UserlistAction {
	@Resource
	UsersVO users;

	@Resource
	private SelUserlistService selUserlist;

	@Resource
	private SelUserlistService selByUname;
	
	@Resource
	private SelUserlistService count;
	
//	@Resource
//	private SelUserlistService userPage;

	@RequestMapping("/userlist.do")
	public String selUserlist(HttpServletRequest req, Model model) throws IOException, ServletException {
//		int offset = (pages-1)*rows;
//		List<UsersVO> count= userPage.userPage(offset, rows);
//		model.addAttribute("count", count);
		
		long ret = selUserlist.count();
		System.out.println(ret);
		model.addAttribute("ret", ret);
		
		String op = req.getParameter("op");
		String uname = req.getParameter("uname");
		
		if ("queryAll".equals(op)) {
			// 如果uname为空则查询全部员工
			List<UsersVO> list = selUserlist.selectUserlist();
			model.addAttribute("list", list);

			JSONObject jsonOb = new JSONObject();
			jsonOb.put("code", 0);
			jsonOb.put("msg", "");
			jsonOb.put("count", 0);
			jsonOb.put("data", list);
			jsonOb.toString();
		} else if (!"".equals(uname)) {
			List<UsersVO> list1 = selByUname.selByUname(uname);
			model.addAttribute("list", list1);

			JSONObject jsonOb1 = new JSONObject();
			jsonOb1.put("code", 0);
			jsonOb1.put("msg", "");
			jsonOb1.put("count", 0);
			jsonOb1.put("data", list1);
			jsonOb1.toString();
		} 
		return "userlist";
	}

}
