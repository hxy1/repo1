package com.yc.financial.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.financial.service.CheckService;
import com.yc.financial.util.StringUtils;
import com.yc.financial.vo.DetailsVO;
import com.yc.financial.vo.PayrollVO;

@Controller
public class CheckVoucherAction {
	
	@Resource
	private CheckService checkservice;

	@RequestMapping(value="/voucher.do",produces = "application/json;charset=utf-8")
	public @ResponseBody String login(String op,PayrollVO payroll,DetailsVO details,
			Model model,HttpServletRequest request,HttpServletResponse response
			,String demoReload,Integer page,Integer limit,Integer id){
		String time = request.getParameter("time");
		
		if(StringUtils.isBlank(time)){
			time = null;
		}
		if(StringUtils.isBlank(String.valueOf(id))){
			id = null;
		}
		
		Integer start = (page-1)*limit;
		if("checkvoucher".equals(op)){
			int CountVoucher = checkservice.countCountVoucher(details);
			List<DetailsVO> Voucherlist = checkservice.selectByPag(id, time, start, limit);
			JSONObject voucherJson = new JSONObject();
			voucherJson.put("code", 0);
			voucherJson.put("msg", "");
			voucherJson.put("count", CountVoucher);
			voucherJson.put("data", Voucherlist);
			return voucherJson.toString();
		}else if("salary".equals(op)){
			List<PayrollVO> Salarylist = checkservice.selectBySalary(payroll);
			int CountSalary = checkservice.countCountSalary(payroll);
			JSONObject salaryJson = new JSONObject();
			salaryJson.put("code", 0);
			salaryJson.put("msg", "");
			salaryJson.put("count", CountSalary);
			salaryJson.put("data", Salarylist);
			return salaryJson.toString();
		}else{     
			return "404";
		}
	}
	
	@RequestMapping("/journal.do")
	public void journal(String op,HttpServletRequest request){
		String types = request.getParameter("keyword");
		 if(types != null){
				List<DetailsVO> Journallist = checkservice.selectTypes(types);
				System.out.println(types);
				JSONObject JournalJson = new JSONObject();
				JournalJson.put("code", 0);
				JournalJson.put("msg", "");
				JournalJson.put("count", 0);
				JournalJson.put("data", Journallist);
		}
	}
}
