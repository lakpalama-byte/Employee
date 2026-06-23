package com.example.controller;


import com.example.entity.Employee;
import com.example.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EmployeeController {


    @Autowired
    EmployeeService employeeService;


    @GetMapping("/employees")


    public List<Employee> getEmployees()   {

        List<Employee> employeeList=employeeService.getAllEmployees();

        return employeeList;
    }
}
