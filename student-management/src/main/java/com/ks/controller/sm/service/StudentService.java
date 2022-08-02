package com.ks.controller.sm.service;

import java.util.List;

import com.ks.controller.sm.api.Student;

public interface StudentService {

	List<Student> loadStudents();

	boolean saveStudent(Student student);

	public Student getStudenById(int id);

	void updateStudent(Student student);

	void deleteStudentById(int id);

}
