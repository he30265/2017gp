package com.join.entities;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component
public class CompanyNeed {
	private Integer need_id;
	private String need_name;
	private String need_city;
	private String need_money;
	private String need_jingyan;
	private String need_xueli;
	private String need_youhuo;
	private String need_miaoshu;
	private String need_xingzhi;
	private Date need_time;
	private String need_address;
	private String need_comname;
	private Integer need_status = 0;
	private Company company;
	
	
	public Integer getNeed_status() {
		return need_status;
	}
	public void setNeed_status(Integer need_status) {
		this.need_status = need_status;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	public String getNeed_comname() {
		return need_comname;
	}
	public void setNeed_comname(String need_comname) {
		this.need_comname = need_comname;
	}
	public Integer getNeed_id() {
		return need_id;
	}
	public void setNeed_id(Integer need_id) {
		this.need_id = need_id;
	}
	public String getNeed_name() {
		return need_name;
	}
	public void setNeed_name(String need_name) {
		this.need_name = need_name;
	}
	public String getNeed_city() {
		return need_city;
	}
	public void setNeed_city(String need_city) {
		this.need_city = need_city;
	}
	public String getNeed_money() {
		return need_money;
	}
	public void setNeed_money(String need_money) {
		this.need_money = need_money;
	}
	public String getNeed_jingyan() {
		return need_jingyan;
	}
	public void setNeed_jingyan(String need_jingyan) {
		this.need_jingyan = need_jingyan;
	}
	public String getNeed_xueli() {
		return need_xueli;
	}
	public void setNeed_xueli(String need_xueli) {
		this.need_xueli = need_xueli;
	}
	public String getNeed_youhuo() {
		return need_youhuo;
	}
	public void setNeed_youhuo(String need_youhuo) {
		this.need_youhuo = need_youhuo;
	}
	public String getNeed_miaoshu() {
		return need_miaoshu;
	}
	public void setNeed_miaoshu(String need_miaoshu) {
		this.need_miaoshu = need_miaoshu;
	}
	public String getNeed_xingzhi() {
		return need_xingzhi;
	}
	public void setNeed_xingzhi(String need_xingzhi) {
		this.need_xingzhi = need_xingzhi;
	}
	public Date getNeed_time() {
		return need_time;
	}
	public void setNeed_time(Date need_time) {
		this.need_time = need_time;
	}
	public String getNeed_address() {
		return need_address;
	}
	public void setNeed_address(String need_address) {
		this.need_address = need_address;
	}
}
