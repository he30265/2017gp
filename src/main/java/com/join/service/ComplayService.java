package com.join.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.join.dao.ComplayDao;
import com.join.entities.Company;
import com.join.entities.CompanyNeed;
import com.join.entities.Retoneed;

@Service
public class ComplayService {
	@Autowired
	private ComplayDao complaydao;
	public void ComplayReg(Company complay){
		complaydao.complayReg(complay);
	}
	public List<Company> complayLog(String company_email,String company_pwd){
		return complaydao.companyLog(company_email, company_pwd);
	}
	public List<CompanyNeed> lookByCid(String need_comname){
		return complaydao.lookByCid(need_comname);
	}
	public Company selectbycid(Integer company_id){
		return complaydao.selectbycid(company_id);
	}
	public void updateInfo(Company c){
		complaydao.update(c);
	}
	public void savezhiwei(Company company){
		complaydao.savezhiwei(company);
	}
	public void savezhiwei2(CompanyNeed companyNeed){
		complaydao.savezhiwei2(companyNeed);
	}
	public List<Company> lookByNid(Integer company_id){
		return complaydao.lookByNid(company_id);
	}
	public List<CompanyNeed> lookById(Integer company_id){
		return complaydao.lookById(company_id);
	}
	public void editoffer(CompanyNeed companyNeed){
		 complaydao.editoffer(companyNeed);
	}
	public CompanyNeed selectbyneedid(Integer need_id){
		return complaydao.selectbyneedid(need_id);
	}
	public void updatestatus(CompanyNeed companyNeed){
		complaydao.updatestatus(companyNeed);
	}
	public List<CompanyNeed> lookdownoffer(){
		return complaydao.lookdownoffer();
	}
	public void deleteoffer(CompanyNeed companyNeed){
		complaydao.deleteoffer(companyNeed);
	}
	public List<Retoneed> clresume(String complay_name){
		return complaydao.clresume(complay_name);
	}
	public List<Retoneed> noresume(String complay_name){
		return complaydao.noresume(complay_name);
	}
	public List<Retoneed> toface(String complay_name){
		return complaydao.toface(complay_name);
	}
	public void updatetoface(Retoneed retoneed){
		complaydao.updatetoface(retoneed);
	}
	public Retoneed selectretoneedbyid(Integer tid) {
		return complaydao.selectretoneedbyid(tid);
	}
	public void updatenopass(Retoneed retoneed) {
		 complaydao.updatenopass(retoneed);
	}
	public void deleteresume(Retoneed retoneed){
		complaydao.deleteresume(retoneed);
	}
	public void changecompwd(Company company){
		complaydao.changecompwd(company);
	}
	public List<Company> selectbyphone(String user_phone){
		return complaydao.selectbyphone(user_phone);
	}
}
