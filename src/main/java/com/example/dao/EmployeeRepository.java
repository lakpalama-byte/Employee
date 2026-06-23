package com.example.dao;

import com.example.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository  extends JpaRepository<Employee,Integer>{


    // under interface, if method is created, there is no method body.....
    Employee findByEmpemailAndEmppass (String email, String pswd);


    // for deleting the Employee with its ID

   //  Employee deleteEmployeeById (Integer id);



}
