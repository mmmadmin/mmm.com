package com.mmm.biz.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.mmm.dao.SysUserDao;
import com.mmm.model.SysUser;

@Service("sysUserService")
public class SysUserService {

	private final static Logger log = LogManager.getLogger(SysUserService.class.getName());

	ApplicationContext context = new ClassPathXmlApplicationContext("spring-jdbc-config.xml");
	SysUserDao dao = (SysUserDao) context.getBean("SysUserDao");
	
	//Return a mock SysUser
	public SysUser getRandomUser() {
		SysUser u = new SysUser();
		String s = "Random";
		u.setFullname(s);
		u.setPassword(s);
		u.setSys_id("" + s.hashCode());
		u.setUsername(s);
		return new SysUser();
	}

}
