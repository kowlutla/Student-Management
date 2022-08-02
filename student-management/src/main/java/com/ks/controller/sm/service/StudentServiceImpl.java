package com.ks.controller.sm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ks.controller.sm.api.Student;
import com.ks.controller.sm.dao.StudentDao;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;

	@Override
	public List<Student> loadStudents() {
		return studentDao.loadStudents();
	}

	@Override
	public boolean saveStudent(Student student) {
		return studentDao.saveStudent(student);
	}

	@Override
	public Student getStudenById(int id) {
		return studentDao.getStudentById(id);
	}

	@Override
	public void updateStudent(Student student) {
		studentDao.updateStudent(student);

	}

	@Override
	public void deleteStudentById(int id) {
		studentDao.deleteStudentById(id);

	}

}
