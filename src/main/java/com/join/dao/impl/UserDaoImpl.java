package com.join.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.join.dao.UserDao;
import com.join.entities.Collects;
import com.join.entities.Company;
import com.join.entities.CompanyNeed;
import com.join.entities.User;

@Repository
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
@Override
	public List<Collects> lookMyColl(String user_name) {
		// TODO Auto-generated method stub
		return (List<Collects>) this.getHibernateTemplate().find("from Collects where collect_name='"+user_name+"'");
	}

@Override
	public List<CompanyNeed> lookAllOffer() {
		// TODO Auto-generated method stub
		return (List<CompanyNeed>) this.getHibernateTemplate().find("from CompanyNeed where need_status=0 order by need_id desc");
	}

@Override
public List<Company> lookAllcom() {
	// TODO Auto-generated method stub
	return (List<Company>) this.getHibernateTemplate().find("from Company");
}

@Override
public void insertCollect(Collects collect) {
	// TODO Auto-generated method stub
	this.getHibernateTemplate().save(collect);
}

@Override
public List<Collects> lookalla(Integer id) {
	// TODO Auto-generated method stub
	return (List<Collects>) this.getHibernateTemplate().get(Collects.class,id);
}

@Override
	public void update(User u) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(u);
	}

	//	用户登录
	@Override
	public List<User> login(String user_phone,String user_pwd) {
		// TODO Auto-generated method stub
		return (List<User>) this.getHibernateTemplate().find("from User where user_phone='"+user_phone+"' and user_pwd='"+user_pwd+"'");
	}
// 通过id查找用户信息
	@Override
	public User lookUserInfoById(Integer user_id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(User.class, user_id);
	}

	// 用户注册
	@Override
	public void reg(User u) {
		getHibernateTemplate().save(u);
	}

	@Autowired
	public void setSessionFactoryOverride(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
//搜索
	@Override
	public List<CompanyNeed> searchresult(String offername) {
		// TODO Auto-generated method stub
		return (List<CompanyNeed>) this.getHibernateTemplate().find("from CompanyNeed where need_name like '%"+offername+"%'");
//		return (List<CompanyNeed>) this.getHibernateTemplate().find("from CompanyNeed c,Company cc where c.need_name like '%"+offername+"%'");
	}
//删除收藏
	@Override
	public List<Collects> selCollect(String user_name,Integer need_id) {
		// TODO Auto-generated method stub
		return (List<Collects>) this.getHibernateTemplate().find("from Collects where collect_name='"+user_name+"' and cneed_id='"+need_id+"'");
	}

	@Override
	public void delCollect(Collects collects) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(collects);
	}
//	修改密码
	@Override
	public void updatepwd(User user) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(user);
	}
	
	
}
