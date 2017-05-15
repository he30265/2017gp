package com.join.dao;

import java.util.List;

import com.join.entities.Admin;
import com.join.entities.Company;
import com.join.entities.Notice;
import com.join.entities.User;

public interface AdminDao {
	List<Admin> adminlogin(String admin_name,String admin_pwd);
	List<User> alluser();
	User listinfo(Integer user_id);
	void deleteinfo(User user);
	List<Company> allcompany();
	Company company(Integer company_id);
	void deletecompany(Company company);
	void updatenotice(Notice notice);
	List<Notice> selectnotice();
	Notice allnotice(Integer nid);
}
