package com.mohammad.sbjsp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mohammad.sbjsp.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

	public Employee findByUsernameAndPassword(String username, String password);

}
