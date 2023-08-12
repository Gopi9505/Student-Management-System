package com.ex.DAO;

import java.util.List;
import java.util.Map;

public interface StudentDAO {
	public int inserStudent(int n,String s1, String s2, String s3, float p);
	public List<Map<String,Object>> showList();
	public Map<String, Object> getStudent(int id);
	public int updateStudent(String s1,String s2,String s3,float p,int id);
	public int deleteStudent(int id);
}
