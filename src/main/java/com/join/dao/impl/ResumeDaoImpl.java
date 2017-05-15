package com.join.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.join.dao.ResumeDao;
import com.join.entities.Resume;
import com.join.entities.Retoneed;
import com.join.entities.User;
@Repository
public class ResumeDaoImpl extends HibernateDaoSupport implements ResumeDao {
	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(user);
	}

	@Autowired
	public void setSessionFactoryOverride(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public void savetoudi(Retoneed retoneed) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(retoneed);
	}

	@Override
	public List<Retoneed> selectretoned(String tusername) {
		// TODO Auto-generated method stub
		return (List<Retoneed>) this.getHibernateTemplate().find("from Retoneed where tusername='"+tusername+"'");
	}

	@Override
	public Resume selectbuid(Integer resume_id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Resume.class,resume_id);
	}
	
	
}
