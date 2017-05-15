package com.join.entities;

import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Component;

@Component
public class Retoneed {
	private Integer tid;
	private Integer tneedid;
	private Integer tcid;
	private String tusername;
	private String toffername;
	private String tneedname;
	private String tmoney;
	private String status;
	private String tcity;
	private Integer tuserid;
	
	
	public Integer getTuserid() {
		return tuserid;
	}
	public void setTuserid(Integer tuserid) {
		this.tuserid = tuserid;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public Integer getTneedid() {
		return tneedid;
	}
	public void setTneedid(Integer tneedid) {
		this.tneedid = tneedid;
	}
	public Integer getTcid() {
		return tcid;
	}
	public void setTcid(Integer tcid) {
		this.tcid = tcid;
	}
	public String getTusername() {
		return tusername;
	}
	public void setTusername(String tusername) {
		this.tusername = tusername;
	}
	public String getToffername() {
		return toffername;
	}
	public void setToffername(String toffername) {
		this.toffername = toffername;
	}
	public String getTneedname() {
		return tneedname;
	}
	public void setTneedname(String tneedname) {
		this.tneedname = tneedname;
	}
	public String getTmoney() {
		return tmoney;
	}
	public void setTmoney(String tmoney) {
		this.tmoney = tmoney;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTcity() {
		return tcity;
	}
	public void setTcity(String tcity) {
		this.tcity = tcity;
	}
}
