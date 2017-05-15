package com.join.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.join.entities.Admin;
import com.join.entities.Company;
import com.join.entities.Notice;
import com.join.entities.User;
import com.join.service.AdminService;


@Controller
public class AdminAction {

	@Autowired
	private AdminService adminservice;
	private String admin_name;
	private String admin_pwd;
	private Integer user_id;
	private Integer company_id;
	private String ncontent;
	private Integer nid;
	
	
	public Integer getNid() {
		return nid;
	}

	public void setNid(Integer nid) {
		this.nid = nid;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public Integer getCompany_id() {
		return company_id;
	}

	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_pwd() {
		return admin_pwd;
	}

	public void setAdmin_pwd(String admin_pwd) {
		this.admin_pwd = admin_pwd;
	}

	public String adminlogin(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(admin_name!=null && admin_pwd!=null){
			List<Admin> admin = adminservice.adminlogin(admin_name, admin_pwd);
			if(admin.size()!=0){
				List<User> user = adminservice.alluser();
				List<Company> company = adminservice.allcompany();
				Notice notice = adminservice.allnotice(1);
				session.setAttribute("admininfo", admin);
				session.setAttribute("userinfoo", user);
				session.setAttribute("companyinfo", company);
				session.setAttribute("notice",notice);
				return "success";				
			}else{
				request.setAttribute("loginerror","true");
				return "input";
			}
		}else{
			request.setAttribute("loginerror2","true");
			return "input";
		}
	}
	public String adminlogout(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.removeAttribute("admininfo");
		session.removeAttribute("userinfoo");
		return "success";
	}
	public void deleteuser() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		User user = adminservice.listinfo(user_id);
		adminservice.deleteinfo(user);
		List<User> newuser = adminservice.alluser();
		session.setAttribute("userinfoo", newuser);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("已删除");
	}
	public void deletecompany() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Company company = adminservice.company(company_id);
		adminservice.deletecompany(company);
		List<Company> newcompany = adminservice.allcompany();
		session.setAttribute("companyinfo", newcompany);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("已删除");
	}
	public String adminlayout(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.removeAttribute("admininfo");
		return "success";
	}
	public String updatenotice(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Notice notice = adminservice.allnotice(nid); 
		notice.setNcontent(ncontent);
		adminservice.updatenotice(notice);
		Notice newnotice = adminservice.allnotice(1);
		session.setAttribute("notice",newnotice);
		return "success";
	}
}
