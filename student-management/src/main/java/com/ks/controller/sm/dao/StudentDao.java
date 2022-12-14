package com.ks.controller.sm.dao;

import java.util.List;

import com.ks.controller.sm.api.Student;

public interface StudentDao {

	List<Student> loadStudents();

	boolean saveStudent(Student student);

	public Student getStudentById(int id);

	void updateStudent(Student student);

	void deleteStudentById(int id);

}
