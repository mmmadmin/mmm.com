package com.mmm.security;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.mmm.dao.SysUserDao;

@Configurable
@Service( value = "userDetailsService" )
public class SysUserDetailsService implements UserDetailsService {
	private final static Logger log = LogManager.getLogger(SysUserDetailsService.class.getName());
	private SysUserDao dao;


	public void setDao(SysUserDao dao) {
		this.dao = dao;
	}

	@Override
	public UserDetails loadUserByUsername(String user_name) throws UsernameNotFoundException {
		log.debug("SysUserDetailsService.loadUserByUsername");
		return new SysUserDetails(user_name,dao);
	}

}
