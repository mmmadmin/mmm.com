package com.mmm.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mmm.dao.SysUserDao;
import com.mmm.model.SysUser;

@Controller
public class AdminController {
	
	private final static Logger log = LogManager.getLogger(AdminController.class.getName());

//	@RequestMapping(method = RequestMethod.GET)
//	public String printHello(ModelMap model) {
////		model.addAttribute("message", "Hello Spring MVC Framework!");
//		ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
//		
//		SysUserDao dao = (SysUserDao)context.getBean("SysUserDao");
//		List<SysUser> users = dao.findAllUser();
//		model.addAllAttributes(users);
//		System.out.println("model.addAllAttributes(users)"+users.size());
////		for(SysUser user: users){
////		model.addAttribute("message", user.toString());
////		}
//
//
//		return "user_list";
//	}
	
	@RequestMapping(value = "/secure/home", method = RequestMethod.GET)
	public ModelAndView getUser() {
		log.debug("Get /secure/home");
		List<SysUser> list = getList();
 
		//return back to user_list.jsp
		ModelAndView model = new ModelAndView("user_list");
		model.addObject("lists", list);
 
		return model;
 
	}
 
	private List<SysUser> getList() {
 
		ApplicationContext context = new ClassPathXmlApplicationContext("META-INF/spring/spring-jdbc-config.xml");
		
		SysUserDao dao = (SysUserDao)context.getBean("SysUserDao");
		List<SysUser> users = dao.findAllUser();
		log.debug("model.addAllAttributes(users) returned: "+users.size()+" objects");

		return users;
 
	}
 

}