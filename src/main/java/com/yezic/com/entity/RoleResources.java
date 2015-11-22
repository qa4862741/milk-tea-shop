package com.yezic.com.entity;

public class RoleResources {
	private int id;
	private int roleId;
	private int resId;
	
	public RoleResources(int roleId, int resId) {
		this.roleId = roleId;
		this.resId = resId;
	}
	
	public RoleResources() {
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public int getResId() {
		return resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
	}

	
}
