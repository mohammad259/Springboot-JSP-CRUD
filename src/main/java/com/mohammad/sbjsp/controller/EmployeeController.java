package com.mohammad.sbjsp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mohammad.sbjsp.model.Employee;
import com.mohammad.sbjsp.service.EmployeeServiceImpl;

@Controller
public class EmployeeController {

	private EmployeeServiceImpl service;
	@RequestMapping("/welcome")
	public String welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}
	
	@RequestMapping("/register")
	public String register(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcome";
	}
	@PostMapping("/saveEmployee")
	public String registerEmployee(@ModelAttribute Employee employee, BindingResult bindingResult, HttpServletRequest request) {
		service.saveEmployee(employee);
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}
	
	@RequestMapping("/showEmployees")
	public String allEmployees(HttpServletRequest request) {
		request.setAttribute("employees", service.showAllEmployees());
		request.setAttribute("mode", "ALL_EMLOYEES");
		return "welcome";
	}
	
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam int id, HttpServletRequest request) {
		service.deleteEmployee(id);
		request.setAttribute("employees", service.showAllEmployees());
		request.setAttribute("mode", "ALL_EMPLOYEES");
		return "welcome";
	}
	
	@RequestMapping("/editEmployee")
	public String editEmployee(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("employee", service.editEmployee(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "welcome";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcome";
	}
	
	@RequestMapping("/loginEmployee")
	public String loginEmployee(@ModelAttribute Employee employee, HttpServletRequest request) {
		if(service.findByUsernameAndPassword(employee.getUsername(), employee.getPassword())!=null) {
			return "home";
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcome";
			
		}
	}
}
