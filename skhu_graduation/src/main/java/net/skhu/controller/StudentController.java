package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.skhu.dto.User;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping(value="stu_main", method=RequestMethod.GET)
	public String main(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "student/stu_main";
	}

	@RequestMapping(value="stu_forgot_password", method=RequestMethod.GET)
	public String forgotPassword(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "student/stu_forgot_password";
	}

	@RequestMapping(value="stu_info", method=RequestMethod.GET)
	public String sudentInformation(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "student/stu_info";
	}
}
