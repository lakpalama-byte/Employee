package com.example.service;

import com.example.entity.Employee;

import java.util.List;

public interface EmployeeService {
    void save(Employee employee);

    Employee authenticate(String email, String pswd);


    List<Employee> getAllEmployees();

    boolean deleteEmployee(Integer id);

    // delete employee with its ID


   // List<Employee> deleteEmployeeByID(Integer id);
}
