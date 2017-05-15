package com.join.entities;

import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Component;

@Component
public class Company {
	private Integer company_id;
	private String company_name;
	private String company_phone;
	private String company_email;
	private String company_pwd;
	private String company_emailcode;
	private String company_url;
	private String company_city;
	private String company_lingyu;
	private String company_jieduan;
	private String company_guimo;
	private Set<CompanyNeed> companyNeed;
	
	public Set<CompanyNeed> getCompanyNeed() {
		return companyNeed;
	}
	public void setCompanyNeed(Set<CompanyNeed> companyNeed) {
		this.companyNeed = companyNeed;
	}
	public String getCompany_url() {
		return company_url;
	}
	public void setCompany_url(String company_url) {
		this.company_url = company_url;
	}
	public String getCompany_city() {
		return company_city;
	}
	public void setCompany_city(String company_city) {
		this.company_city = company_city;
	}
	public String getCompany_lingyu() {
		return company_lingyu;
	}
	public void setCompany_lingyu(String company_lingyu) {
		this.company_lingyu = company_lingyu;
	}
	public String getCompany_jieduan() {
		return company_jieduan;
	}
	public void setCompany_jieduan(String company_jieduan) {
		this.company_jieduan = company_jieduan;
	}
	
	public String getCompany_guimo() {
		return company_guimo;
	}
	public void setCompany_guimo(String company_guimo) {
		this.company_guimo = company_guimo;
	}
	public Integer getCompany_id() {
		return company_id;
	}
	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_phone() {
		return company_phone;
	}
	public void setCompany_phone(String company_phone) {
		this.company_phone = company_phone;
	}
	public String getCompany_email() {
		return company_email;
	}
	public void setCompany_email(String company_email) {
		this.company_email = company_email;
	}
	public String getCompany_pwd() {
		return company_pwd;
	}
	public void setCompany_pwd(String company_pwd) {
		this.company_pwd = company_pwd;
	}
	public String getCompany_emailcode() {
		return company_emailcode;
	}
	public void setCompany_emailcode(String company_emailcode) {
		this.company_emailcode = company_emailcode;
	}
	@Override
	public String toString() {
		return "Company [company_id=" + company_id + ", company_name=" + company_name + ", company_phone="
				+ company_phone + ", company_email=" + company_email + ", company_pwd=" + company_pwd
				+ ", company_emailcode=" + company_emailcode + ", company_url=" + company_url + ", company_city="
				+ company_city + ", company_lingyu=" + company_lingyu + ", company_jieduan=" + company_jieduan
				+ ", company_guimo=" + company_guimo + ", companyNeed=" + companyNeed + "]";
	}
	
}
