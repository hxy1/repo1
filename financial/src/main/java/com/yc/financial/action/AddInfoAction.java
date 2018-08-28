package com.yc.financial.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.yc.financial.service.AddInfoService;
import com.yc.financial.service.RegistService;
import com.yc.financial.vo.UsersVO;

@Controller
public class AddInfoAction {

	@Resource
	private AddInfoService addinfoService;
	
	@Resource
	private RegistService registservice;
	
	@RequestMapping(value="/allregist.do",produces = "application/json;charset=utf-8")
	public String addinfo(@RequestParam("file") MultipartFile file,UsersVO users ,
			HttpSession session,HttpServletRequest request ) throws IllegalStateException, IOException{
		if (!file.isEmpty()) {
			String oldName = file.getOriginalFilename();
			String fileName = changeName(oldName);
	    	File f = new File("f:\\picture\\"+fileName);
	    	session.setAttribute("fileName", fileName);
	    	file.transferTo(f) ;
	    	users.setUpic(f.getPath());
		}else {
			//没修改图片
			users.setUpic(addinfoService.selectByUid(users).getUpic());
		}
		List<UsersVO> list1 = registservice.selectByAccount(users);
		addinfoService.AddInfo(users);
		String account = (String) session.getAttribute("account");
		System.out.println(account);
		return "index";
	}
	
	public static String changeName(String oldName){
        Random r = new Random();
        Date d = new Date();
        String newName = oldName.substring(oldName.indexOf('.'));
        newName = r.nextInt(99999999) + d.getTime() + newName;
        return newName;
    }
	
}
