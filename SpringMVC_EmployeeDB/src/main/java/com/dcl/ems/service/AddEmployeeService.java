package com.dcl.ems.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dcl.ems.model.Employee;
import com.dcl.ems.repository.AddEmployeeRepository;

@Service
public class AddEmployeeService {
	
	@Autowired
	private AddEmployeeRepository repository;
	public void addEmployee(Employee e) {
		repository.addEmployee(e);
	}
	public List<Employee> fetchAllEmloyees() {
		List<Employee> employees=repository.findAllEmployees();
		if(employees.isEmpty()) {
			return null;
		}
		else {
			return employees;
		}
	}
	
	public Employee findEmployeeByid(int id) {
		Employee employee=repository.findEmployeeByid(id);
		if(employee!=null) {
			return employee;
		}
		else {
			return null;
		}
	}
	public void updatedEmployee(Employee employee) {
		 repository.updateEmployee(employee);
	}
	public void deletebyidEmployee(int id) {
		repository.deleteEmployee(id);
	}
	
}
