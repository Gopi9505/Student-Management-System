package com.ex.DAO;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private static final String INSERT_QUERY = "INSERT INTO StudentsData VALUES (?,?,?,?,?)";
	private static final String SELECT_QUERY = "SELECT * FROM StudentsData";
	private static final String SINGLE_RECORD_QUERY = "SELECT * FROM StudentsData WHERE STU_ROLLNO=?";
	private static final String UPDATE_QUERY = "UPDATE StudentsData SET STU_FNAME=?,STU_LNAME=?,STU_EMAIL=?,STU_PERCENTAGE=? WHERE STU_ROLLNO=?";
	private static final String DELETE_QUERY = "DELETE FROM StudentsData WHERE STU_ROLLNO=?";
	
	@Override
	public int inserStudent(int n, String fname, String lname, String email, float password) {
		int row = jdbcTemplate.update(INSERT_QUERY,n,fname,lname,email,password);
		return row;
	}

	public List<Map<String,Object>> showList(){
		List<Map<String,Object>> list = jdbcTemplate.queryForList(SELECT_QUERY);
		return list;
	}

	@Override
	public Map<String, Object> getStudent(int id) {
		Map<String, Object> map = jdbcTemplate.queryForMap(SINGLE_RECORD_QUERY, id);
		return map;
	}

	@Override
	public int updateStudent(String s1, String s2, String s3, float p, int id) {
		int row = jdbcTemplate.update(UPDATE_QUERY,s1,s2,s3,p,id);
		return row;
	}

	@Override
	public int deleteStudent(int id) {
		int row = jdbcTemplate.update(DELETE_QUERY,id);
		return row;
	}
	
}
