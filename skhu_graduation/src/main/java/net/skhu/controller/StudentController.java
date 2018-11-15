package net.skhu.controller;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.skhu.dto.Department;
import net.skhu.dto.MySubject;
import net.skhu.dto.SecondMajor;
import net.skhu.dto.Student;
import net.skhu.dto.User;
import net.skhu.mapper.DepartmentMapper;
import net.skhu.mapper.MySubjectMapper;
import net.skhu.mapper.SecondMajorMapper;
import net.skhu.mapper.StudentMapper;
import net.skhu.mapper.UserMapper;
import net.skhu.util.SecurityUtil;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired UserMapper userMapper;
	@Autowired MySubjectMapper mySubjectMapper;
	@Autowired StudentMapper studentMapper;
	@Autowired DepartmentMapper departmentMapper;
	@Autowired SecondMajorMapper secondMajorMapper;
	
	@RequestMapping(value="stu_main", method=RequestMethod.GET)
	public String main(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "student/stu_main";
	}

	// 학생 비밀번호 찾기를 위한 OTP검사
	@RequestMapping(value="stu_forgot_password", method=RequestMethod.GET)
	public String stu_forgot_password(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "student/stu_forgot_password";
	}
	
	@RequestMapping(value = "stu_forgot_password", method = RequestMethod.POST)
	public String stu_forgot_password(Model model, User user, RedirectAttributes redirectAttributes) {
		boolean result = true;

		String id = user.getId();
		
		int resultId = userMapper.findOne(id);// 아이디가 존재하지않으면 0 존재하면 1

		if (resultId == 1) { // 아이디가 존재하면
			if (result) { // 학생 인증(OTP) 성공 -> 학생이 직접 비번을 바꿀 수 있도록 
				redirectAttributes.addAttribute("id", id);
				return "redirect:change_password";
			} else { // 학생 인증(OTP) 실패
				model.addAttribute("result", -1);
				return "student/stu_forgot_password";
			}
		} else { // 아이디가 존재하지 않으면
			model.addAttribute("result", -2);
			return "student/stu_forgot_password";
		}
	}
	
	//학생 비밀번호 변경
	@RequestMapping(value="change_password", method=RequestMethod.GET)
	public String change_password(Model model, @RequestParam("id") String id) {
		User user = new User();
		user.setId(id);
		model.addAttribute("user", user);
		return "student/change_password";
	}
	
	@RequestMapping(value="change_password", method=RequestMethod.POST)
	public String change_password(Model model, User user) {
		String regex="([a-zA-Z].+[0-9])|([0-9].+[a-zA-Z])"; //영문+숫자

		if(user.getPassword().equals(user.getConfirmPassword())) {
			if(!user.getPassword().matches(regex) || user.getPassword().length()<8) {
				user.setPassword("");
				user.setConfirmPassword("");
				model.addAttribute("user", user);
				model.addAttribute("result", -2); //비밀번호가 조건에 맞지 않을 때
			}else {
				SecurityUtil su = new SecurityUtil();
				String enPassword = su.encryptBySHA256(user.getPassword());	// 암호화
				user.setPassword(enPassword);
				userMapper.changePassword(user.getId(), user.getPassword());
				model.addAttribute("result", 1);
			}
		}else {
			model.addAttribute("result", -1); //비밀번호와 확인 비밀번호가 일치하지 않을 때
		}
		return "student/change_password";
	}

	//수강 과목 조회를 위한 메소드
		@RequestMapping(value="stu_subject_list", method=RequestMethod.GET)
		public String stu_subject_list(Model model, HttpSession session) {
			User user = (User) session.getAttribute("user");
			
			int enterYear = Integer.parseInt(user.getId().substring(0,4));
			
			Calendar c = Calendar.getInstance();
			int currentYear = c.get(Calendar.YEAR);
			
			List<MySubject> mySubjectlist = mySubjectMapper.findAll(user.getId());

			model.addAttribute("mySubjectlist", mySubjectlist);
			model.addAttribute("enterYear", enterYear);
			model.addAttribute("currentYear", currentYear);

			return "student/stu_subject_list";
		}
		
		@RequestMapping(value="stu_subject_list", method=RequestMethod.POST)
		public String stu_subject_list(Model model, HttpSession session, @RequestParam("subjectListYear") Object subjectListYear, @RequestParam("subjectListSemester") Object subjectListSemester) {
			User user = (User) session.getAttribute("user");
			int enterYear = Integer.parseInt(user.getId().substring(0,4));
			Calendar c = Calendar.getInstance();
			int currentYear = c.get(Calendar.YEAR);
			
			List<MySubject> mySubjectlist;
			
			int year = Integer.parseInt((String)subjectListYear);
			int semester = Integer.parseInt((String)subjectListSemester);
			if(year==0) {//전체조회
				mySubjectlist = mySubjectMapper.findAll(user.getId()); 
			}else {//수강년도, 수강학기 조회
				mySubjectlist = mySubjectMapper.findByYearAndSemester(user.getId(), (String)subjectListYear,  (String)subjectListSemester);
			}
			model.addAttribute("mySubjectlist", mySubjectlist);
			model.addAttribute("enterYear", enterYear);
			model.addAttribute("currentYear", currentYear);
			model.addAttribute("year", year);
			model.addAttribute("semester", semester);

			return "student/stu_subject_list";
		}
	
	//professor_info GET
		@RequestMapping("stu_info")
		public String stu_info(Model model,HttpSession session) {
			User user = (User) session.getAttribute("user");
			
			
			User users=userMapper.findById(user.getId());
			
			model.addAttribute("users", users );
			
			Student student = studentMapper.findOneWithUser(user.getId());
			model.addAttribute("student", student );
			
			SecondMajor secondMajor=secondMajorMapper.findOneById(user.getId());

			return "student/stu_info";
		}
		


		
		// professor_info POST
			@RequestMapping(value="stu_info",method=RequestMethod.POST)
			public String stu_info(Model model,User user, HttpSession session, Student student ) {

				User userGetId = (User) session.getAttribute("user");
				user.setId(userGetId.getId());
				String alert="";
				String regex="([a-zA-Z].+[0-9])|([0-9].+[a-zA-Z])"; //영문+숫자
				studentMapper.update(student);
				userMapper.updateStudent(user);

				//비밀번호 조건에 맞지 않을 떄
				if(!user.getPassword().matches(regex) || user.getPassword().length()<8) {
					alert="-1";
					model.addAttribute("user",user);
					model.addAttribute("alert",alert);
					return "student/stu_info";

				}
				// 비밀번호와 확인비밀번호가 다를 때
				if(!user.getConfirmPassword().equals(user.getPassword())) {
					alert="-2";
					model.addAttribute("user",user);
					model.addAttribute("alert",alert);
					return "student/stu_info";
				}

				SecurityUtil su = new SecurityUtil();
				String enPssword = su.encryptBySHA256(user.getPassword());// 암호화
				user.setPassword(enPssword);

				return "redirect:/student/stu_main"; //학생 조회 페이지로
			}
	
	//학생 전공인정
	@RequestMapping(value="stu_major_admit",method=RequestMethod.GET)
	public String stu_major_admit(Model model, HttpSession session, @RequestParam ("subjectCode") String subjectCode) {
		User user = (User) session.getAttribute("user");
		MySubject mySubject = mySubjectMapper.findByOneSubject(user.getId(), subjectCode);
		model.addAttribute("mySubject", mySubject);
		String completionDivision;
		if(mySubject.getCompletionDivision().contains("교")) {
			 completionDivision = "교선";
			model.addAttribute("completionDivision", completionDivision);
		}else {
			completionDivision = "전선";
			model.addAttribute("completionDivision", completionDivision);
		}
		return "stu_major_admit";
	}
		
}
