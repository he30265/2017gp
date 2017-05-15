package com.join.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.join.dao.AdminDao;
import com.join.entities.Admin;
import com.join.entities.Company;
import com.join.entities.Notice;
import com.join.entities.User;
@Repository
public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {
	@Autowired
	public void setSessionFactoryOverride(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	@Override
	public List<Admin> adminlogin(String admin_name,String admin_pwd){
		return (List<Admin>) this.getHibernateTemplate().find("from Admin where admin_name='"+admin_name+"' and admin_pwd='"+admin_pwd+"'");
	}
	@Override
	public List<User> alluser() {
		// TODO Auto-generated method stub
		return (List<User>) this.getHibernateTemplate().find("from User");
	}
	@Override
	public User listinfo(Integer user_id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(User.class,user_id);
	}
	@Override
	public void deleteinfo(User user) {
		// TODO Auto-generated method stub
		 this.getHibernateTemplate().delete(user);
	}
	@Override
	public List<Company> allcompany() {
		// TODO Auto-generated method stub
		return (List<Company>) this.getHibernateTemplate().find("from Company");
	}
	@Override
	public Company company(Integer company_id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Company.class,company_id);
	}
	@Override
	public void deletecompany(Company company) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(company);
	}
	@Override
	public void updatenotice(Notice notice) {
		// TODO Auto-generated method stub
		 this.getHibernateTemplate().update(notice);;
	}
	@Override
	public List<Notice> selectnotice() {
		// TODO Auto-generated method stub
		return (List<Notice>) this.getHibernateTemplate().find("from Notice");
	}
	@Override
	public Notice allnotice(Integer nid) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Notice.class,nid);
	}
	
	
	
}
