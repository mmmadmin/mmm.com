package com.mmm.security;

import java.util.Collection;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.mmm.dao.SysUserDao;
import com.mmm.dao.impl.SysUserDaoImpl;
import com.mmm.model.SysUser;

public class SysUserDetails implements UserDetails {
	private final static Logger log = LogManager.getLogger(SysUserDetails.class.getName());
	private static final long serialVersionUID = 3588829073590454864L;
	private SysUser sysUser;
	private SysUserDao userdao;

	public SysUserDetails(String username) {
		super();
		ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");

		SysUserDao dao = (SysUserDao) context.getBean("SysUserDao");

		this.userdao = dao;
		this.sysUser = dao.findUserByUsername(username);
		log.debug("SysUserDetails constructor");
	}

	public SysUser getSysUser() {
		return sysUser;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		SysUserDaoImpl uservice = (SysUserDaoImpl)userdao;
		return uservice.findRolesByUsername(getUsername());
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return sysUser.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return sysUser.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
