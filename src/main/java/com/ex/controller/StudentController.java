package com.ex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ex.DAO.StudentDAOImpl;
import com.ex.model.Student;

@Controller
public class StudentController {

	@GetMapping("/")
	public String showHome() {
		return "welcome";
	}
	
	@GetMapping("/login")
	public String showAdminLoginPage() {
		return "adminLogin";
	}
	
	@PostMapping("/login")
	public String showMainHome() {
		return "main_home";
	}
	
	@GetMapping("/addStudent")
	public String showAddStudentPage() {
		return "addStudent";
	}
	
	@Autowired
	StudentDAOImpl stdao;
	
	@PostMapping("/addStudent")
	public String showResultPage(@ModelAttribute("stud") Student st, Map<String,Object> map) {
		int rollno = st.getStudent_rollno();
		String fname = st.getStudent_fname();
		String lname = st.getStudent_lname();
		String email = st.getStudent_email();
		float percentage = st.getStudent_percentage();
		
		String msg = null;
		
		int n = stdao.inserStudent(rollno, fname, lname, email, percentage);
		if(n==1) {
			msg = "Sudent Added.";
		}else {
			msg = "Invalid Data!";
		}
		map.put("msg", msg);
		map.put("formData", st);
		map.put("pageFor", "New student added successfully.");
		return "success";
	}
	
	@GetMapping("/gotomainhome")
	public String gotoMainHome() {
		return "main_home";
	}
	
	@GetMapping("/showStudentList")
	public String showAllStudentListPage(Map<String,Object> map) {
		List<Map<String,Object>> studentList = stdao.showList();
		map.put("studentList", studentList);
		return "allStudentList";
	}
	
	@GetMapping("/editStudent")
	public String editStudentPage(@RequestParam("student_rollno") int id, Map<String,Object> map) {
		@SuppressWarnings("unused")
		Map<String, Object> student = stdao.getStudent(id);
		map.put("id", id);
		return "editStudent";
	}
	
	@PostMapping("/editStudent")
	public String editStudentPage(@ModelAttribute("stud") Student stud, Map<String,Object> map) {
		int n = stdao.updateStudent(stud.getStudent_fname(), stud.getStudent_lname(), stud.getStudent_email(), stud.getStudent_percentage(), stud.getStudent_rollno());
		String msg = null;
		if(n==1) {
			msg = "success";
		}else {
			msg = "Failed!";
		}
		map.put("msg", msg);
		map.put("formData", stud);
		map.put("pageFor", "Student details update successfull.");
		return "success";
	}
	
	@GetMapping("/deleteStudent")
	public String deleteStudentPage(@RequestParam("student_rollno") int id, @ModelAttribute("stud") Student stud, Map<String,Object> map) {
	
		int n = stdao.deleteStudent(id);
		String msg = null;
		if(n==1) {
			msg = "success";
		}else {
			msg = "Failed!";
		}
		map.put("msg", msg);
		return "redirect:/showStudentList";
	}
	
	@GetMapping("/search")
	public String getSearch() {
		return "search-Student";
	}
	
}
