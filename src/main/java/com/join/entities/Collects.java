package com.join.entities;

import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class Collects {
	private Integer collect_id;
	private String collect_name;
	private Integer cneed_id;
	public Integer getCollect_id() {
		return collect_id;
	}
	public void setCollect_id(Integer collect_id) {
		this.collect_id = collect_id;
	}
	public String getCollect_name() {
		return collect_name;
	}
	public void setCollect_name(String collect_name) {
		this.collect_name = collect_name;
	}
	public Integer getCneed_id() {
		return cneed_id;
	}
	public void setCneed_id(Integer cneed_id) {
		this.cneed_id = cneed_id;
	}
	@Override
	public String toString() {
		return "Collects [collect_id=" + collect_id + ", collect_name=" + collect_name + ", cneed_id=" + cneed_id + "]";
	}
	
}
