package com.ks.controller.sm.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ks.controller.sm.api.Student;
import com.ks.controller.sm.rowmapper.StudentRowMapper;

@Repository
public class StudentDaoImpl implements StudentDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Student> loadStudents() {
		String sql = "SELECT *FROM STUDENTS";

		List<Student> students = jdbcTemplate.query(sql, new StudentRowMapper());
		return students;
	}

	@Override
	public boolean saveStudent(Student student) {
		String sql = "INSERT INTO STUDENTS(name,mobile,country) VALUES(?,?,?)";
		int update = jdbcTemplate.update(sql, student.getName(), student.getMobile(), student.getCountry());

		if (update != 0) {
			return true;
		} else {
			return false;
		}
	}

}
