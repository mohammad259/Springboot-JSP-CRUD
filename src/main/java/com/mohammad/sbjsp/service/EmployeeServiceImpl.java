package com.mohammad.sbjsp.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mohammad.sbjsp.model.Employee;
import com.mohammad.sbjsp.repository.EmployeeRepository;

@Service
@Transactional
public class EmployeeServiceImpl {
	
	@Autowired
	private EmployeeRepository repository;
	
	public void saveEmployee(Employee employee) {
		repository.save(employee);
	}
	
	public List<Employee> showAllEmployees(){
		List<Employee> employees = new ArrayList<Employee>();
		for(Employee employee : repository.findAll()) {
			employees.add(employee);
		}
		
		return employees;
	}
	
	public void deleteEmployee(int id) {
		repository.deleteById(id);
	}
	
	public Employee editEmployee(int id) {
		return repository.getOne(id);
	}
	
	public Employee findByUsernameAndPassword(String username, String password) {
		return repository.findByUsernameAndPassword(username, password);
	}

}
