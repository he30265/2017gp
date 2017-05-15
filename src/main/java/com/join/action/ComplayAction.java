package com.join.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.join.entities.Company;
import com.join.entities.CompanyNeed;
import com.join.entities.Retoneed;
import com.join.service.ComplayService;
import com.join.service.ResumeService;
import com.join.service.UserService;
@Controller
public class ComplayAction {
	@Autowired
	ComplayService complayservice;
	@Autowired
	ResumeService resumeservice;
	@Autowired
	UserService userservice;
	private Integer theNum;
	private String compan_id;
	private Integer company_id;
	private String company_name;
	private String company_phone;
	private String company_email;
	private String company_pwd;
	private String company_emailcode;
	private String youremail;
	private String company_url;
	private String company_city;
	private String company_lingyu;
	private String company_jieduan;
	private String company_guimo;
	private Integer need_id;
	private String need_name;
	private String need_city;
	private String need_money;
	private String need_jingyan;
	private String need_xueli;
	private String need_youhuo;
	private String need_miaoshu;
	private String need_xingzhi;
	private String need_address;
	private String need_comname;
	private Integer need_status;
	private Integer tid;
	private String phone;
	
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getTid() {
		return tid;
	}
	public void setTid(Integer tid) {
		this.tid = tid;
	}
	public Integer getNeed_status() {
		return need_status;
	}
	public void setNeed_status(Integer need_status) {
		this.need_status = need_status;
	}
	public String getCompan_id() {
		return compan_id;
	}
	public void setCompan_id(String compan_id) {
		this.compan_id = compan_id;
	}
	public String getNeed_comname() {
		return need_comname;
	}
	public void setNeed_comname(String need_comname) {
		this.need_comname = need_comname;
	}
	public Integer getNeed_id() {
		return need_id;
	}
	public void setNeed_id(Integer need_id) {
		this.need_id = need_id;
	}
	public String getNeed_name() {
		return need_name;
	}
	public void setNeed_name(String need_name) {
		this.need_name = need_name;
	}
	public String getNeed_city() {
		return need_city;
	}
	public void setNeed_city(String need_city) {
		this.need_city = need_city;
	}
	public String getNeed_money() {
		return need_money;
	}
	public void setNeed_money(String need_money) {
		this.need_money = need_money;
	}
	public String getNeed_jingyan() {
		return need_jingyan;
	}
	public void setNeed_jingyan(String need_jingyan) {
		this.need_jingyan = need_jingyan;
	}
	public String getNeed_xueli() {
		return need_xueli;
	}
	public void setNeed_xueli(String need_xueli) {
		this.need_xueli = need_xueli;
	}
	public String getNeed_youhuo() {
		return need_youhuo;
	}
	public void setNeed_youhuo(String need_youhuo) {
		this.need_youhuo = need_youhuo;
	}
	public String getNeed_miaoshu() {
		return need_miaoshu;
	}
	public void setNeed_miaoshu(String need_miaoshu) {
		this.need_miaoshu = need_miaoshu;
	}
	public String getNeed_xingzhi() {
		return need_xingzhi;
	}
	public void setNeed_xingzhi(String need_xingzhi) {
		this.need_xingzhi = need_xingzhi;
	}
	public String getNeed_address() {
		return need_address;
	}
	public void setNeed_address(String need_address) {
		this.need_address = need_address;
	}
	public String getCompany_url() {
		return company_url;
	}
	public void setCompany_url(String company_url) {
		this.company_url = company_url;
	}
	public String getCompany_city() {
		return company_city;
	}
	public void setCompany_city(String company_city) {
		this.company_city = company_city;
	}
	public String getCompany_lingyu() {
		return company_lingyu;
	}
	public void setCompany_lingyu(String company_lingyu) {
		this.company_lingyu = company_lingyu;
	}
	public String getCompany_jieduan() {
		return company_jieduan;
	}
	public void setCompany_jieduan(String company_jieduan) {
		this.company_jieduan = company_jieduan;
	}
	public String getCompany_guimo() {
		return company_guimo;
	}
	public void setCompany_guimo(String company_guimo) {
		this.company_guimo = company_guimo;
	}
	public String getYouremail() {
		return youremail;
	}
	public void setYouremail(String youremail) {
		this.youremail = youremail;
	}
	public Integer getTheNum() {
		return theNum;
	}
	public void setTheNum(Integer theNum) {
		this.theNum = theNum;
	}
	public Integer getCompany_id() {
		return company_id;
	}
	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_phone() {
		return company_phone;
	}
	public void setCompany_phone(String company_phone) {
		this.company_phone = company_phone;
	}
	public String getCompany_email() {
		return company_email;
	}
	public void setCompany_email(String company_email) {
		this.company_email = company_email;
	}
	public String getCompany_pwd() {
		return company_pwd;
	}
	public void setCompany_pwd(String company_pwd) {
		this.company_pwd = company_pwd;
	}
	public String getCompany_emailcode() {
		return company_emailcode;
	}
	public void setCompany_emailcode(String company_emailcode) {
		this.company_emailcode = company_emailcode;
	}
//	发送邮箱验证码
	public void sendemail() throws IOException{
		theNum=(int) (Math.random()*10000);
		String stmp = "smtp.163.com";
		String from = "deathguidao@163.com";// 发信邮箱
		String to = youremail;// 收信邮箱
		String username = "deathguidao@163.com";
		String password = "adminwang5210";
		String subject = "在线招聘系统";// 邮件主题
		String text = "您的验证码是："+theNum;// 邮件内容
		EmailUtils sm = new EmailUtils(stmp);
		sm.setNamePass(username, password);
		sm.setSubject(subject);
		sm.setFrom(from);
		sm.setTo(to);
		sm.setText(text);
		sm.addFileAffix("");
		sm.createMimeMessage();
		sm.setOut();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(theNum);
	}
//	企业注册
	public String complayReg(){
		Company complay = new Company();
		CompanyNeed companyneed = new CompanyNeed();
		complay.setCompany_email(company_email);
		complay.setCompany_emailcode(company_emailcode);
		complay.setCompany_name(company_name);
		complay.setCompany_phone(company_phone);
		complay.setCompany_pwd(company_pwd);
		companyneed.setCompany(complay);
		complayservice.ComplayReg(complay);
		return "success";
	}
//	企业登录
	public String complayLogin(){
		List<Company> li = complayservice.complayLog(company_email, company_pwd);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(li.size()!=0){
			List<CompanyNeed> com = complayservice.lookByCid(li.get(0).getCompany_name());
			List<CompanyNeed> downoffers = complayservice.lookdownoffer();
			session.setAttribute("dowmcomneed",downoffers);
			session.setAttribute("companyInfo",com);
			session.setAttribute("compan",li);
			if(li.get(0).getCompany_jieduan()!=null){
				return "success";				
			}else{
				return "wansahnxinxi";
			}
		}else{
			request.setAttribute("qiyezhuangtai","true");
			return "comerror";
		}
	}
//	完善企业信息
	public String editMyInfo(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Company com = complayservice.selectbycid(company_id);
		com.setCompany_url(company_url);
		com.setCompany_city(company_city);
		com.setCompany_lingyu(company_lingyu);
		com.setCompany_jieduan(company_jieduan);
		com.setCompany_guimo(company_guimo);
		complayservice.updateInfo(com);
		List<Company> newcomplay = complayservice.lookByNid(company_id);
		List<CompanyNeed> newcom = complayservice.lookByCid(newcomplay.get(0).getCompany_name());
		List<CompanyNeed> downoffers = complayservice.lookdownoffer();
		session.setAttribute("dowmcomneed",downoffers);
		session.setAttribute("companyInfo",newcom);
		session.setAttribute("compan",newcomplay);
		return "success";
	}
//	发布职位信息
	public String savezhiwei(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Company company = complayservice.selectbycid(company_id);
		CompanyNeed com = new CompanyNeed();
		com.setNeed_address(need_address);
		com.setNeed_city(need_city);
		com.setNeed_jingyan(need_jingyan);
		com.setNeed_miaoshu(need_miaoshu);
		com.setNeed_money(need_money);
		com.setNeed_name(need_name);
		com.setNeed_time(new Date());
		com.setNeed_xingzhi(need_xingzhi);
		com.setNeed_xueli(need_xueli);
		com.setNeed_youhuo(need_youhuo);
		com.setNeed_comname(need_comname);
		com.setCompany(company);
		complayservice.savezhiwei2(com);
		List<Company> newcompany = complayservice.lookByNid(company_id);
		List<CompanyNeed> newcomneed = complayservice.lookByCid(newcompany.get(0).getCompany_name());
		List<CompanyNeed> list = userservice.lookAllOffer();
		session.setAttribute("alloffer",list);
		session.setAttribute("companyInfo",newcomneed);
		session.setAttribute("compan",newcompany);
		return "success";
	}
//	查看职位详细信息
	public String lookZixi(){
		List<Company> com = complayservice.lookByNid(company_id);
		List<CompanyNeed> comm = complayservice.lookById(need_id);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("zixicom",com);
		request.setAttribute("zixioff", comm);
		return "success";
	}
//	编辑职位
	public String editoffer(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Company company = complayservice.selectbycid(company_id);
		CompanyNeed com = complayservice.selectbyneedid(need_id);
		com.setNeed_address(need_address);
		com.setNeed_city(need_city);
		com.setNeed_jingyan(need_jingyan);
		com.setNeed_miaoshu(need_miaoshu);
		com.setNeed_money(need_money);
		com.setNeed_name(need_name);
		com.setNeed_time(new Date());
		com.setNeed_xingzhi(need_xingzhi);
		com.setNeed_xueli(need_xueli);
		com.setNeed_youhuo(need_youhuo);
		com.setNeed_comname(need_comname.trim());
		com.setCompany(company);
		complayservice.editoffer(com);
		List<Company> newcompany = complayservice.lookByNid(company_id);
		List<CompanyNeed> newcomneed = complayservice.lookByCid(newcompany.get(0).getCompany_name().trim());
		session.setAttribute("companyInfo",newcomneed);
		session.setAttribute("compan",newcompany);
		return "success";
	}
//	查询要编辑的职位
	public String lookeditoffer(){
		CompanyNeed cneed = complayservice.selectbyneedid(need_id);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("needoffer",cneed);
		return "editsuccess";
	}
//	下线职位
	public String downoffer(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		CompanyNeed cneed = complayservice.selectbyneedid(need_id);
		cneed.setNeed_status(1);
		complayservice.updatestatus(cneed);
		List<CompanyNeed> newcomneed = complayservice.lookByCid(company_name);
		session.setAttribute("companyInfo",newcomneed);
		List<CompanyNeed> downoffers = complayservice.lookdownoffer();
		session.setAttribute("dowmcomneed",downoffers);
		return "success";
	}
//	删除职位
	public String deleteoffer(){
		CompanyNeed cneed = complayservice.selectbyneedid(need_id);
		complayservice.deleteoffer(cneed);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		List<CompanyNeed> newcomneed = complayservice.lookByCid(company_name);
		session.setAttribute("companyInfo",newcomneed);
		List<CompanyNeed> downoffers = complayservice.lookdownoffer();
		session.setAttribute("dowmcomneed",downoffers);
		return "success";
	}
//	简历管理
	public String manageResume(){
		List<Retoneed> clresume = complayservice.clresume(company_name);
		List<Retoneed> noresume = complayservice.noresume(company_name);
		List<Retoneed> toface = complayservice.toface(company_name);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("clresume",clresume);
		session.setAttribute("noresume",noresume);
		session.setAttribute("toface",toface);
		return "success";
	}
//	检查手机号
	public void checkphone() throws IOException{
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		List<Company> com = complayservice.selectbyphone(phone);
		if(com.size()!=0){
			out.print("手机号已被注册");
		}else{
			out.print("可以注册");
		}
		
	}
//	通知面试
	public void telltoface() throws IOException{
		String stmp = "smtp.163.com";
		String from = "deathguidao@163.com";// 发信邮箱
		String to = "1169216507@qq.com";// 收信邮箱
		String username = "deathguidao@163.com";
		String password = "adminwang5210";
		String subject = "在线招聘系统";// 邮件主题
		String text = company_name+"公司邀您面试啦！速速登录系统查看";// 邮件内容
		EmailUtils sm = new EmailUtils(stmp);
		sm.setNamePass(username, password);
		sm.setSubject(subject);
		sm.setFrom(from);
		sm.setTo(to);
		sm.setText(text);
		sm.addFileAffix("");
		sm.createMimeMessage();
		sm.setOut();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		Retoneed retoneed = complayservice.selectretoneedbyid(tid);
		retoneed.setStatus("通知面试");
		complayservice.updatetoface(retoneed);
		List<Retoneed> clresume = complayservice.clresume(company_name);
		List<Retoneed> noresume = complayservice.noresume(company_name);
		List<Retoneed> toface = complayservice.toface(company_name);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("clresume",clresume);
		session.setAttribute("noresume",noresume);
		session.setAttribute("toface",toface);
		out.print("通知成功");
	}
//	不合格简历
	public void irefuse() throws IOException{
		Retoneed retoneed = complayservice.selectretoneedbyid(tid);
		retoneed.setStatus("不合格");
		complayservice.updatetoface(retoneed);
		List<Retoneed> clresume = complayservice.clresume(company_name);
		List<Retoneed> noresume = complayservice.noresume(company_name);
		List<Retoneed> toface = complayservice.toface(company_name);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("clresume",clresume);
		session.setAttribute("noresume",noresume);
		session.setAttribute("toface",toface);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("已标记为不合格");
	}
//	删除简历
	public void deleteresume() throws IOException{
		Retoneed retoneed = complayservice.selectretoneedbyid(tid);
		complayservice.deleteresume(retoneed);
		List<Retoneed> clresume = complayservice.clresume(company_name);
		List<Retoneed> noresume = complayservice.noresume(company_name);
		List<Retoneed> toface = complayservice.toface(company_name);
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("clresume",clresume);
		session.setAttribute("noresume",noresume);
		session.setAttribute("toface",toface);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("已删除");
	}
//	修改企业密码
	public String changecompwd(){
		Company company = complayservice.selectbycid(company_id);
		company.setCompany_pwd(company_pwd);
		complayservice.changecompwd(company);
		return "success";
	}
//	企业注销
	public String companylout(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.removeAttribute("compan");
		return "success";
	}
	
}
