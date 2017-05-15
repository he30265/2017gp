package com.join.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.join.dao.ComplayDao;
import com.join.entities.Company;
import com.join.entities.CompanyNeed;
import com.join.entities.Retoneed;
@Repository
public class ComplayDaoImpl extends HibernateDaoSupport implements ComplayDao {
	@Autowired
	public void setSessionFactoryOverride(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public List<Company> companyLog(String company_email, String company_pwd) {
		// TODO Auto-generated method stub
		return (List<Company>) getHibernateTemplate().find("from Company where company_email='"+company_email+"' and company_pwd='"+company_pwd+"'");
	}
	@Override
	public List<CompanyNeed> lookByCid(String need_comname) {
		// TODO Auto-generated method stub
		return (List<CompanyNeed>) this.getHibernateTemplate().find("from CompanyNeed where need_comname = '"+need_comname+"'and need_status=0");
	}
	@Override
	public void update(Company c) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(c);
	}
	@Override
	public void savezhiwei(Company company) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(company);
	}
	
	@Override
	public void savezhiwei2(CompanyNeed companyNeed) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(companyNeed);
	}
	@Override
	public List<Company> lookByNid(Integer company_id) {
		// TODO Auto-generated method stub
		return (List<Company>) this.getHibernateTemplate().find("from Company where company_id='"+company_id+"'");
	}
	@Override
	public List<CompanyNeed> lookById(Integer company_id) {
		// TODO Auto-generated method stub
		return (List<CompanyNeed>) this.getHibernateTemplate().find("from CompanyNeed where need_id='"+company_id+"'and need_status=0");
	}
	@Override
	public void complayReg(Company complay) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(complay);
	}
	@Override
	public Company selectbycid(Integer company_id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Company.class,company_id);
	}
	@Override
	public void editoffer(CompanyNeed companyNeed) {
		// TODO Auto-generated method stub
		 this.getHibernateTemplate().update(companyNeed);
	}
	@Override
	public CompanyNeed selectbyneedid(Integer need_id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(CompanyNeed.class,need_id);
	}
	@Override
	public void updatestatus(CompanyNeed comneed) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(comneed);
	}
	@Override
	public List<CompanyNeed> lookdownoffer() {
		// TODO Auto-generated method stub
		return (List<CompanyNeed>) this.getHibernateTemplate().find("from CompanyNeed where need_status=1");
	}
	public void deleteoffer(CompanyNeed companyNeed){
		 this.getHibernateTemplate().delete(companyNeed);
	}
	@Override
	public List<Retoneed> clresume(String complay_name) {
		// TODO Auto-generated method stub
		return (List<Retoneed>) this.getHibernateTemplate().find("from Retoneed where tneedname='"+complay_name+"'and status='待处理'");
	}
	@Override
	public List<Retoneed> noresume(String complay_name) {
		// TODO Auto-generated method stub
		return (List<Retoneed>) this.getHibernateTemplate().find("from Retoneed where tneedname='"+complay_name+"'and status='不合格'");
	}
	@Override
	public List<Retoneed> toface(String complay_name) {
		// TODO Auto-generated method stub
		return (List<Retoneed>) this.getHibernateTemplate().find("from Retoneed where tneedname='"+complay_name+"'and status='通知面试'");
	}
	@Override
	public void updatetoface(Retoneed retoneed) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(retoneed);
	}
	@Override
	public Retoneed selectretoneedbyid(Integer tid) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Retoneed.class,tid);
	}
	@Override
	public void updatenopass(Retoneed retoneed) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(retoneed);
	}
	@Override
	public void deleteresume(Retoneed retoneed) {
		// TODO Auto-generated method stub
		 this.getHibernateTemplate().delete(retoneed);;
	}
	public void changecompwd(Company company){
		this.getHibernateTemplate().update(company);
	}
	@Override
	public List<Company> selectbyphone(String user_phone) {
		// TODO Auto-generated method stub
		return (List<Company>) getHibernateTemplate().find("from User where user_phone='"+user_phone+"'");
	}
	
}
