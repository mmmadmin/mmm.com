package com.mmm.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mmm.dao.SysUserDao;
import com.mmm.model.SysUser;

@Controller
public class LoginController {
	private final static Logger log = LogManager.getLogger(LoginController.class.getName());

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		log.debug("Get /login");
		return new ModelAndView("login", "command", new SysUser());
	}

	@RequestMapping(value = "/login/check")//, method = RequestMethod.POST)
	public String loginCheck(SysUser user, RedirectAttributes redirectAttributes) {
		log.debug("in loginCheck: user.getUsername(): " + user.getUsername());
		log.debug("in loginCheck: user.getPassword(): " + user.getPassword());
		ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");

		SysUserDao dao = (SysUserDao) context.getBean("SysUserDao");
		SysUser foundUser = dao.findUserByUsername(user.getUsername());
		log.debug("foundUser: " + foundUser.toString());
		if (foundUser.getUsername() == null) {
			redirectAttributes.addFlashAttribute("message", "Username not found");
			return "redirect:failure";
		} else if (foundUser.getPassword().equals(user.getPassword())) {

			redirectAttributes.addFlashAttribute("username", foundUser.getUsername());
			redirectAttributes.addFlashAttribute("password", foundUser.getPassword());
			redirectAttributes.addFlashAttribute("fname", foundUser.getFullname());

			return "redirect:success";
//			return "loginok";
		} else {
			redirectAttributes.addFlashAttribute("message", "Password not correct");
			return "redirect:failure";
		}
	}

	@RequestMapping(value = "/login/success", method = RequestMethod.GET)
	public String successPage() {
		log.debug("Get /login/success");
		return "loginok";
	}

	@RequestMapping(value = "/login/failure", method = RequestMethod.GET)
	public String failurePage() {
		log.debug("Get /login/failure");
		return "loginfailure";
	}

	@RequestMapping(value = "/denied", method = RequestMethod.GET)
	public String deniedPage() {
		log.debug("Get /denied");
		return "denied";
	}

}