package com.join.dao;

import java.util.List;

import com.join.entities.Company;
import com.join.entities.CompanyNeed;
import com.join.entities.Retoneed;

public interface ComplayDao {
	void complayReg(Company complay);
	List<Company> companyLog(String company_email,String company_pwd);
	List<CompanyNeed> lookByCid(String need_comname);
	void update(Company c);
	void savezhiwei(Company company);
	void savezhiwei2(CompanyNeed companyNeed);
	List<Company> lookByNid(Integer company_id);
	List<CompanyNeed> lookById(Integer company_id);
	Company selectbycid(Integer company_id);
	void editoffer(CompanyNeed companyNeed);
	CompanyNeed selectbyneedid(Integer need_id);
	void updatestatus(CompanyNeed comneed);
	List<CompanyNeed> lookdownoffer();
	void deleteoffer(CompanyNeed companyNeed);
	List<Retoneed> clresume(String complay_name);
	List<Retoneed> noresume(String complay_name);
	List<Retoneed> toface(String complay_name);
//	通知面试
	void updatetoface(Retoneed retoneed);
//	查询投递职位
	Retoneed selectretoneedbyid(Integer tid);
//	不合格简历
	void updatenopass(Retoneed retoneed);
//	删除简历
	void deleteresume(Retoneed retoneed);
//	修改企业密码
	void changecompwd(Company company);
	List<Company> selectbyphone(String user_phone);
}
