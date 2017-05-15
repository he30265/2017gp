package com.join.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.join.entities.Collects;
import com.join.entities.Company;
import com.join.entities.CompanyNeed;
import com.join.entities.Notice;
import com.join.entities.Resume;
import com.join.entities.Retoneed;
import com.join.entities.User;
import com.join.service.AdminService;
import com.join.service.ComplayService;
import com.join.service.ResumeService;
import com.join.service.UserService;
import com.opensymphony.xwork2.util.logging.Logger;

@Controller
public class UserAction {
	@Autowired
	private UserService userservice;
	@Autowired
	private ResumeService resumeservice;
	@Autowired
	private AdminService adminservice;
	@Autowired
	ComplayService complayservice;
	private String user_name;
	private String user_pwd;
	private String user_phone;
	private String resume_name;
	private String resume_type;
	private String resume_zhineng;
	private String resume_money;
	private String resume_wantadd;
	private String resume_schoolname;
	private String resume_xueli;
	private String resume_zhuanye;
	private String resume_finshtime;
	private String resume_myself;
	private String resume_lianjie;
	private String resume_miaoshu;
	private String resume_phone;
	private Integer resume_id;
	private Integer user_id;
	private String flag;
	private Integer need_id;
	private String offername;
	private String newpassword;
	private Integer tneedid;
	private Integer tcid;
	private String tusername;
	private String toffername;
	private String tneedname;
	private String tmoney;
	private String status = "待处理";
	private String tcity;
	private Integer tuserid;
	private String resume_sex;
	private String resume_offeryear;
	private String resume_email;
	private String resume_status;
	
	
	public String getResume_email() {
		return resume_email;
	}

	public void setResume_email(String resume_email) {
		this.resume_email = resume_email;
	}

	public String getResume_status() {
		return resume_status;
	}

	public void setResume_status(String resume_status) {
		this.resume_status = resume_status;
	}

	public String getResume_offeryear() {
		return resume_offeryear;
	}

	public void setResume_offeryear(String resume_offeryear) {
		this.resume_offeryear = resume_offeryear;
	}

	public String getResume_sex() {
		return resume_sex;
	}

	public void setResume_sex(String resume_sex) {
		this.resume_sex = resume_sex;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getTuserid() {
		return tuserid;
	}

	public void setTuserid(Integer tuserid) {
		this.tuserid = tuserid;
	}

	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public UserService getUserservice() {
		return userservice;
	}

	public void setUserservice(UserService userservice) {
		this.userservice = userservice;
	}

	public Integer getTneedid() {
		return tneedid;
	}

	public void setTneedid(Integer tneedid) {
		this.tneedid = tneedid;
	}

	public Integer getTcid() {
		return tcid;
	}

	public void setTcid(Integer tcid) {
		this.tcid = tcid;
	}

	public String getTusername() {
		return tusername;
	}

	public void setTusername(String tusername) {
		this.tusername = tusername;
	}

	public String getToffername() {
		return toffername;
	}

	public void setToffername(String toffername) {
		this.toffername = toffername;
	}

	public String getTneedname() {
		return tneedname;
	}

	public void setTneedname(String tneedname) {
		this.tneedname = tneedname;
	}

	public String getTmoney() {
		return tmoney;
	}

	public void setTmoney(String tmoney) {
		this.tmoney = tmoney;
	}

	public String getTcity() {
		return tcity;
	}

	public void setTcity(String tcity) {
		this.tcity = tcity;
	}

	public String getOffername() {
		return offername;
	}

	public void setOffername(String offername) {
		this.offername = offername;
	}

	public Integer getNeed_id() {
		return need_id;
	}

	public void setNeed_id(Integer need_id) {
		this.need_id = need_id;
	}

	public String getResume_phone() {
		return resume_phone;
	}

	public void setResume_phone(String resume_phone) {
		this.resume_phone = resume_phone;
	}

	public String getResume_lianjie() {
		return resume_lianjie;
	}

	public void setResume_lianjie(String resume_lianjie) {
		this.resume_lianjie = resume_lianjie;
	}

	public String getResume_miaoshu() {
		return resume_miaoshu;
	}

	public void setResume_miaoshu(String resume_miaoshu) {
		this.resume_miaoshu = resume_miaoshu;
	}

	public String getResume_myself() {
		return resume_myself;
	}

	public void setResume_myself(String resume_myself) {
		this.resume_myself = resume_myself;
	}

	public String getResume_schoolname() {
		return resume_schoolname;
	}

	public void setResume_schoolname(String resume_schoolname) {
		this.resume_schoolname = resume_schoolname;
	}

	public String getResume_xueli() {
		return resume_xueli;
	}

	public void setResume_xueli(String resume_xueli) {
		this.resume_xueli = resume_xueli;
	}

	public String getResume_zhuanye() {
		return resume_zhuanye;
	}

	public void setResume_zhuanye(String resume_zhuanye) {
		this.resume_zhuanye = resume_zhuanye;
	}

	public String getResume_finshtime() {
		return resume_finshtime;
	}

	public void setResume_finshtime(String resume_finshtime) {
		this.resume_finshtime = resume_finshtime;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public Integer getResume_id() {
		return resume_id;
	}

	public void setResume_id(Integer resume_id) {
		this.resume_id = resume_id;
	}

	public String getResume_type() {
		return resume_type;
	}

	public void setResume_type(String resume_type) {
		this.resume_type = resume_type;
	}

	public String getResume_zhineng() {
		return resume_zhineng;
	}

	public void setResume_zhineng(String resume_zhineng) {
		this.resume_zhineng = resume_zhineng;
	}

	public String getResume_money() {
		return resume_money;
	}

	public void setResume_money(String resume_money) {
		this.resume_money = resume_money;
	}

	public String getResume_wantadd() {
		return resume_wantadd;
	}

	public void setResume_wantadd(String resume_wantadd) {
		this.resume_wantadd = resume_wantadd;
	}

	public String getResume_name() {
		return resume_name;
	}

	public void setResume_name(String resume_name) {
		this.resume_name = resume_name;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	
//	用户注册
	public String userreg(){
		User u = new User();
		Resume re = new Resume();
		u.setUser_name(user_name);
		u.setUser_pwd(user_pwd);
		u.setUser_phone(user_phone);
		re.setResume_phone(resume_phone);
		u.setResume(re);
		re.setUser(u);
		userservice.reg(u);
		return "regsuccess";
	}
//	遍历所有职位和公司
	public void lookalloffer() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		HttpServletResponse response = ServletActionContext.getResponse();
		List<CompanyNeed> list = userservice.lookAllOffer();
		Notice notice = adminservice.allnotice(1);
		/*List newcid = new ArrayList();
		for(int i=0;i<list.size();i++){
			Integer cid = list.get(i).getCompany().getCompany_id();
			newcid.add(cid);
		}*/
		PrintWriter out = response.getWriter();
		session.setAttribute("alloffer",list);
//		session.setAttribute("comid", newcid);
		session.setAttribute("allnotice",notice);
		out.print(list);
	}
//	用户登录
	public String userlogin(){
		List<User> user = userservice.login(user_phone, user_pwd);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(user.size()!=0){
			User userInfo = userservice.lookUserInfoById(user.get(0).getUser_id());
			System.out.println(userInfo.getResume().getResume_phone());
			session.setAttribute("userinfo",userInfo);
			return "index";
		}else{
			request.setAttribute("zhuangtai","true");
			return "loginerror";
		}
	}
//	用户注销
	public String userlogout(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.removeAttribute("userinfo");
		return "index";
	}
//	修改简历
	public String editresumeone(){
		User userInfo = userservice.lookUserInfoById(user_id);
		if(flag.equals("one")){
			userInfo.getResume().setResume_type(resume_type);
			userInfo.getResume().setResume_money(resume_money);
			userInfo.getResume().setResume_zhineng(resume_zhineng);
			userInfo.getResume().setResume_wantadd(resume_wantadd);
		}else if(flag.equals("two")){
			userInfo.getResume().setResume_schoolname(resume_schoolname);
			userInfo.getResume().setResume_xueli(resume_xueli);
			userInfo.getResume().setResume_zhuanye(resume_zhuanye);
			userInfo.getResume().setResume_finshtime(resume_finshtime);
		}else if(flag.equals("three")){
			userInfo.getResume().setResume_myself(resume_myself);
		}else if(flag.equals("four")){
			userInfo.getResume().setResume_lianjie(resume_lianjie);
			userInfo.getResume().setResume_miaoshu(resume_miaoshu);
		}else if(flag.equals("five")){
			userInfo.getResume().setResume_name(resume_name);
			userInfo.getResume().setResume_sex(resume_sex);
			userInfo.getResume().setResume_offeryear(resume_offeryear);
			userInfo.getResume().setResume_phone(resume_phone);
			userInfo.getResume().setResume_email(resume_email);
			userInfo.getResume().setResume_status(resume_status);			
		}else{
			return "404";			
		}
		resumeservice.update(userInfo);
		User newInfo = userservice.lookUserInfoById(user_id);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("userinfo",newInfo);
		return "success";
	}
//	添加收藏
	public void addCollect() throws IOException{
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Collects collects = new Collects();
		collects.setCollect_name(user_name);
		collects.setCneed_id(need_id);
		List<Collects> c = userservice.selCollect(user_name, need_id);
		if(c.size()!=0){
			out.println("该职位已收藏");
		}else{
		userservice.insertCollect(collects);
		out.print("收藏成功");
		}
	}
//	删除收藏
	public void delCollect() throws Exception{
		Collects collects = new Collects();
		collects.setCollect_name(user_name);
		collects.setCneed_id(need_id);
		List<Collects> c = userservice.selCollect(user_name, need_id);
		userservice.delCollect(c.get(0));
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("已取消收藏这个职位");
	}
//	查看收藏夹
	@SuppressWarnings("unchecked")
	public String lookmycollects(){
		List li = new ArrayList();
		List<Collects> list = userservice.lookMyColl(user_name);
		for(int i=0;i<list.size();i++){
			List<CompanyNeed> cnli = complayservice.lookById(list.get(i).getCneed_id());
			li.add(cnli);
		}
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("mycoll",li);
		return "success";
	}
//	搜索职位
	public String searchoffer(){
		HttpServletRequest request = ServletActionContext.getRequest();
		List<CompanyNeed> cn = userservice.searchresult(offername);
		request.setAttribute("searchresult",cn);
		request.setAttribute("offername",offername);
		return "success";
	}
//	投递简历
	public void savatoudi() throws IOException{
		Retoneed retoneed = new Retoneed();
		retoneed.setTcid(tcid);
		retoneed.setTcity(tcity);
		retoneed.setTmoney(tmoney);
		retoneed.setTneedid(tneedid);
		retoneed.setTneedname(tneedname);
		retoneed.setToffername(toffername);
		retoneed.setTusername(tusername);
		retoneed.setStatus(status);
		retoneed.setTuserid(tuserid);
		resumeservice.savetoudi(retoneed);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("投递成功");
	}
//投递记录
	public String delivery(){
		List<Retoneed> reneed = resumeservice.selectretoned(tusername);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("reneed",reneed);
		return "success";
	}
//	修改
	public String changepwd(){
		User user = userservice.lookUserInfoById(user_id);
		user.setUser_pwd(user_pwd);
		userservice.updatepwd(user);
		return "success";
	}
}
