package com.join.dao;

import java.util.List;

import com.join.entities.Resume;
import com.join.entities.Retoneed;
import com.join.entities.User;

public interface ResumeDao {
	void update(User user);
	void savetoudi(Retoneed retoneed);
	List<Retoneed> selectretoned(String tusername);
	Resume selectbuid(Integer resume_id);
}
