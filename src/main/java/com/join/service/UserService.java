package com.join.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.join.dao.UserDao;
import com.join.entities.Collects;
import com.join.entities.Company;
import com.join.entities.CompanyNeed;
import com.join.entities.User;

@Service
public class UserService {
	@Autowired
	private UserDao userdao;
//	用户注册
	public void reg(User u){
		userdao.reg(u);
	}
//	用户登录
	public List<User> login(String user_phone,String user_pwd){
		return userdao.login(user_phone, user_pwd);
	}
//	修改简历
	public void updatamyself(User u){
		userdao.update(u);
	}
//	通过id查找用户信息
	public User lookUserInfoById(Integer user_id){
		return userdao.lookUserInfoById(user_id);
	}
//	页面加载的时候加载所有职位信息
	public List<CompanyNeed> lookAllOffer(){
		return userdao.lookAllOffer();
	}
//	页面加载的时候加载所有的公司信息
	public List<Company> lookAllcom(){
		return userdao.lookAllcom();
	}
//	添加收藏
	public void insertCollect(Collects collect){
		userdao.insertCollect(collect);
	}
//	查看收藏夹
	public List<Collects> lookMyColl(String user_name){
		return userdao.lookMyColl(user_name);
	}
//	查询
	public List<Collects> lookalla(Integer id){
		return userdao.lookalla(id);
	}
//	搜索
	public List<CompanyNeed> searchresult(String offername){
		return userdao.searchresult(offername);
	}
//	查询收藏id
	public List<Collects> selCollect(String user_name,Integer need_id){
		return userdao.selCollect(user_name, need_id);
	}
//	删除收藏
	public void delCollect(Collects collects){
		userdao.delCollect(collects);
	}
//	修改密码
	public void updatepwd(User user){
		userdao.updatepwd(user);
	}
}
