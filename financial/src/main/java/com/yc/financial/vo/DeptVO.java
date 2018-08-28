package com.yc.financial.vo;

/**
 * 部门表
 */
public class DeptVO {
	private Integer did;
	private String dname;
	private Integer dlevel;
	private String account ;
	private Integer staff;
	/**
	 * 部门id
	 */
	public Integer getDid() {
		return did;
	}
	/**
	 * 部门id
	 */
	public void setDid(Integer did) {
		this.did = did;
	}
	/**
	 * 部门名称
	 */
	public String getDname() {
		return dname;
	}
	/**
	 * 部门名称
	 */
	public void setDname(String dname) {
		this.dname = dname;
	}
	/**
	 * 部门等级(1采购部,2财务部,3财务经理,
	 * 4总经理 不能为空 4为最高等级)
	 */
	public Integer getDlevel() {
		return dlevel;
	}
	/**
	 * 部门等级(1采购部,2财务部,3财务经理,
	 * 4总经理 不能为空 4为最高等级)
	 */
	public void setDlevel(Integer dlevel) {
		this.dlevel = dlevel;
	}
	/**
	 * 外键(user表用户账号)
	 */
	public String getaccount () {
		return account ;
	}
	/**
	 * 外键(user表用户账号)
	 */
	public void setaccount (String account ) {
		this.account  = account ;
	}
	/**
	 * 员工数量
	 */
	public Integer getStaff() {
		return staff;
	}
	/**
	 * 员工数量	 
	 */
	public void setStaff(Integer staff) {
		this.staff = staff;
	}
	
	

}
