package com.dcl.ems.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dcl.ems.model.Employee;
import com.dcl.ems.service.AddEmployeeService;

@Controller
public class AddEmployeeController {
	
	@Autowired
	private AddEmployeeService service;
	
	@RequestMapping("/add")
	public ModelAndView addEmployee(Employee e) {		
		service.addEmployee(e);

//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("index.jsp");
//      return mav;//use this
//		ModelAndView mav = new ModelAndView("index.jsp");or this
		
		return new ModelAndView("index.jsp");//or this
	}
	
	@RequestMapping("/display-all")
	public ModelAndView displayAllEmployees() {
//		Resolvig Request
		List<Employee> emps=service.fetchAllEmloyees();
//		Generating Response
		ModelAndView mav=new ModelAndView();
		mav.setViewName("view-all.jsp");
		mav.addObject("employeeList", emps);
		return mav;
		
	}
	@RequestMapping("/find-by-id")
	public ModelAndView fetchEmployeeById(int id) {
		Employee emp=service.findEmployeeByid(id);
		
		ModelAndView mav=new ModelAndView();
		mav.setViewName("update.jsp");
		mav.addObject("employeeObject", emp);
		return mav;
	}
	@RequestMapping("/update-employee")
	public ModelAndView updateEmployee(Employee employee) {

	    service.updatedEmployee(employee);
//	    List<Employee> emps = service.fetchAllEmloyees();
//	    ModelAndView mav = new ModelAndView();
//	    mav.setViewName("view-all.jsp");
//	    mav.addObject("employeeList", emps);
//	    return mav;
	    return displayAllEmployees();
	}
	@RequestMapping("/delete-by-id")
	public ModelAndView deleteEmployee(int id){
	    service.deletebyidEmployee(id);
	    return displayAllEmployees();
	}
}
