package com.join.dao;


import java.util.List;

import com.join.entities.Collects;
import com.join.entities.Company;
import com.join.entities.CompanyNeed;
import com.join.entities.User;

public interface UserDao {
	void reg(User u);
	List<User> login(String user_phone,String user_pwd);
	void update(User u);
	User lookUserInfoById(Integer user_id);
	List<CompanyNeed> lookAllOffer();
	List<Company> lookAllcom();
	void insertCollect(Collects collect);
	List<Collects> lookMyColl(String user_name);
	List<Collects> lookalla(Integer id);
	List<CompanyNeed> searchresult(String offername);
	List<Collects> selCollect(String user_name,Integer need_id);
	void delCollect(Collects collects);
	void updatepwd(User user);
}
