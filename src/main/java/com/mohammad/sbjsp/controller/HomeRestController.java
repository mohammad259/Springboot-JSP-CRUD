package com.mohammad.sbjsp.controller;
 
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mohammad.sbjsp.model.Employee;
import com.mohammad.sbjsp.service.EmployeeServiceImpl;

@RestController
public class HomeRestController {

	private EmployeeServiceImpl service;
	
	@GetMapping("/")
	public String home() {
		return "welcome";
	}
	
	@GetMapping("/save-employee")
	public String saveEmployee(@RequestParam String username, @RequestParam String fullname, 
									@RequestParam String salary, @RequestParam String mobile,
									@RequestParam String email,@RequestParam String password) {
		Employee employee = new Employee(username, fullname, salary, mobile, email, password);
		service.saveEmployee(employee);
		return "Employee Saved successfully";
	}
	
}
