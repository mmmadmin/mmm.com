package com.mmm.dao;

import java.util.List;

import com.mmm.model.SysUser;

public interface SysUserDao {
	
	public List<SysUser> findAllUser();
	public SysUser findUserByUsername(String username);

}
