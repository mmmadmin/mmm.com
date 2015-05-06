package com.mmm.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import com.mmm.dao.SysUserDao;
import com.mmm.model.SysUser;

public class SysUserDaoImpl implements SysUserDao {
	
	private final static Logger log = LogManager.getLogger(SysUserDaoImpl.class.getName());

	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	@Override
	public List<SysUser> findAllUser() {
		log.trace("Entering findAllUser()");
		String SQL = "select * from sys_user limit 10";
		List<SysUser> users = new ArrayList<SysUser>();
		log.debug(SQL);
		log.info("Calling: findAllUser()");
		jdbcTemplate.query(SQL, new RowCallbackHandler() {
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				SysUser user = new SysUser();
				user.setFullname(rs.getString("name"));
				user.setUsername(rs.getString("user_name"));
				user.setPassword(rs.getString("user_password"));
				user.setSys_id(rs.getString("sys_id"));
				users.add(user);
			}
		});
		log.trace("Exiting findAllUser()");
		return users;
	}

	@Override
	public SysUser findUserByUsername(String username) {
		String SQL = "select * from sys_user where user_name = ?";
		SysUser user = new SysUser();
		jdbcTemplate.query(SQL, new Object[]{username},new RowCallbackHandler() {
			@Override
			public void processRow(ResultSet rs) throws SQLException {
				user.setFullname(rs.getString("name"));
				user.setUsername(rs.getString("user_name"));
				user.setPassword(rs.getString("user_password"));
				user.setSys_id(rs.getString("sys_id"));
			}
		});
		return user;
	}
	
	public List<SimpleGrantedAuthority> findRolesByUsername(String username){
		SysUser user = findUserByUsername(username);
		List<SimpleGrantedAuthority> list = new ArrayList<SimpleGrantedAuthority>();
		String SQL = "select granted_role from sys_user_role where user_sys_id = ?";
		log.debug(SQL);
		List<String> listRoles = (List<String>)jdbcTemplate.queryForList(SQL, new Object[]{user.getSys_id()}, String.class);
		for(String role:listRoles){
			SimpleGrantedAuthority sga = new SimpleGrantedAuthority("role");
			list.add(sga);
			log.debug("User: "+user.getFullname()+" has role: "+role);
		}
		return list;
	}
}
