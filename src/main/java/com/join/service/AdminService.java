package com.join.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.join.dao.AdminDao;
import com.join.entities.Admin;
import com.join.entities.Company;
import com.join.entities.Notice;
import com.join.entities.User;

@Service
public class AdminService {

	@Autowired
	private AdminDao admindao;

	public List<Admin> adminlogin(String admin_name, String admin_pwd) {
		return admindao.adminlogin(admin_name, admin_pwd);
	}

	public List<User> alluser() {
		return admindao.alluser();
	}

	public User listinfo(Integer user_id) {
		// TODO Auto-generated method stub
		return admindao.listinfo(user_id);
	}

	public void deleteinfo(User user) {
		// TODO Auto-generated method stub
		admindao.deleteinfo(user);
	}

	public List<Company> allcompany() {
		return admindao.allcompany();
	}

	public Company company(Integer company_id) {
		// TODO Auto-generated method stub
		return admindao.company(company_id);
	}
	public void deletecompany(Company company) {
		// TODO Auto-generated method stub
		admindao.deletecompany(company);
	}
	public void updatenotice(Notice notice){
		admindao.updatenotice(notice);
	}
	public List<Notice> selectnotice(){
		return admindao.selectnotice();
	}
	public Notice allnotice(Integer nid){
		return admindao.allnotice(nid);
	}
}
