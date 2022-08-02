package com.ks.controller.sm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ks.controller.sm.api.Student;
import com.ks.controller.sm.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	// @ResponseBody
	@GetMapping("/students")
	public String showStudentList(Model model) {

		List<Student> students = studentService.loadStudents();
		model.addAttribute("students", students);

		return "student-list";
	}

	@GetMapping("/addStudent")
	public String addStudent(Model model) {
		model.addAttribute("student", new Student());
		return "add-student";
	}

	@PostMapping("/saveStudent")
	public String saveStudent(Student student) {

		if (student.getId() == 0)
			studentService.saveStudent(student);
		else {
			studentService.updateStudent(student);
		}
		return "redirect:/students";
	}

	@RequestMapping("/updateStudent")
	public String updateStudent(Model model, @RequestParam("id") int id) {

		Student student = studentService.getStudenById(id);
		model.addAttribute("student", student);

		return "add-student";
	}

	@RequestMapping("/deleteStudent")
	public String delteStudent(@RequestParam("id") int id) {
		studentService.deleteStudentById(id);
		return "redirect:/students";
	}
}
