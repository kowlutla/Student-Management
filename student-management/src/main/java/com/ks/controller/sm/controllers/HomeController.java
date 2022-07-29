package com.ks.controller.sm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	// @ResponseBody
	@GetMapping("/students")
	public String showStudentList() {
		return "student-list";
	}
}
