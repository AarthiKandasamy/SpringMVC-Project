package com.dcl.ems.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.dcl.ems.model.Employee;

@Repository
public class AddEmployeeRepository {
	
	Configuration config= new Configuration().configure().addAnnotatedClass(Employee.class);
	SessionFactory sef=config.buildSessionFactory();

	public void addEmployee(Employee e) {
		Session ses=sef.openSession();
		Transaction tran=ses.getTransaction();
		tran.begin();
		ses.save(e);
		tran.commit();
		ses.close();
	}

	public List<Employee> findAllEmployees() {
		Session ses=sef.openSession();
		Query<Employee> query=ses.createQuery("FROM Employee");
		List<Employee> employees=query.getResultList();
		ses.close();
		return employees;
	}

	public Employee findEmployeeByid(int id) {
		Session ses=sef.openSession();
		Employee employee=ses.get(Employee.class, id);
		ses.close();
		return employee;
	}

	public void updateEmployee(Employee employee) {
        Session ses = sef.openSession();
        Transaction tran =ses.beginTransaction();
        ses.update(employee);
        tran.commit();
        ses.close();
    }

	public void deleteEmployee(int id) {
		Session ses = sef.openSession();
	    Transaction tran = ses.beginTransaction();
	    Employee emp = ses.get(Employee.class, id);
	    if(emp != null){
	        ses.delete(emp);
	    }
	    tran.commit();
	    ses.close();
	}

}
