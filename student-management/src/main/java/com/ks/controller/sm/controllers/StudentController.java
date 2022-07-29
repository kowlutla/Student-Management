package com.ks.controller.sm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ks.controller.sm.api.Student;
import com.ks.controller.sm.dao.StudentDao;

@Controller
public class StudentController {

	@Autowired
	private StudentDao studentDao;

	// @ResponseBody
	@GetMapping("/students")
	public String showStudentList(Model model) {

		List<Student> students = studentDao.loadStudents();
		model.addAttribute("students", students);

		for (Student s : students) {
			System.out.println(s);
		}
		return "student-list";
	}
}
