package com.yc.financial.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.financial.service.SubAccountService;
import com.yc.financial.service.impl.SubAccountServiceImpl;
import com.yc.financial.vo.DetailsVO;
import com.yc.financial.vo.accountypeVO;

@Controller
public class SubAccountAction {
	
	@Resource
	private SubAccountService subaccount;
	
	@RequestMapping("/subaccount")
	public String subaccount(Model model){
		List<accountypeVO> list = subaccount.selectAccountType();
		model.addAttribute("list", list);
		//弹窗标志位
		model.addAttribute("sign", null);
		return "insAccount";
	}
	
	@RequestMapping("/insertaccount")
	public String insertaccount(DetailsVO detail,Model model){
		java.util.Date udate = new java.util.Date();	//获取系统时间
		java.sql.Date sdate = new java.sql.Date(udate.getTime());//类型转换
		detail.setReportime(sdate);
		int i = subaccount.insertaccount(detail);
		if(i>0){
			//弹窗标志位
			model.addAttribute("sign", "ok");
			System.out.println("成功");
			List<accountypeVO> list = subaccount.selectAccountType();
			model.addAttribute("list", list);
			return "insAccount";
		}else{
			System.out.println("失败");
			//弹窗标志位
			model.addAttribute("sign", "no");
			List<accountypeVO> list = subaccount.selectAccountType();
			model.addAttribute("list", list);
			return "insAccount";
		}
		
	}
	


}
