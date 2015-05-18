package com.mmm.model;

import java.io.Serializable;

public class SysUser implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6865534317950842749L;
	String sys_id;
	String username;
	String password;
	String fullname;
	
	public SysUser() {
		
	}

	@Override
	public String toString() {
		return "User [sys_id=" + sys_id + ", username=" + username
				+ ", password=" + password + ", fullname=" + fullname + "]";
	}

	public String getSys_id() {
		return sys_id;
	}

	public void setSys_id(String sys_id) {
		this.sys_id = sys_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	

}
