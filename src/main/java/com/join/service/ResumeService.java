package com.join.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.join.dao.ResumeDao;
import com.join.entities.Resume;
import com.join.entities.Retoneed;
import com.join.entities.User;
@Service
public class ResumeService {
	@Autowired
	private ResumeDao resumedao;
//	修改简历
	public void update(User user){
		resumedao.update(user);
	}
//	简历投递
	public void savetoudi(Retoneed retoneed){
		resumedao.savetoudi(retoneed);
	}
//	查看投递记录
	public List<Retoneed> selectretoned(String tusername){
		return resumedao.selectretoned(tusername);
	}
//	通过Id查询简历
	public Resume selectbuid(Integer resume_id){
		return resumedao.selectbuid(resume_id);
	}
}
