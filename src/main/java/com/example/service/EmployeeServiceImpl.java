package com.example.service;

import com.example.dao.EmployeeRepository;
import com.example.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    EmployeeRepository employeeRepository;

    @Override
    public void save(Employee employee) {


        employeeRepository.save(employee);
    }


    @Override
    public Employee authenticate(String email, String pswd) {
        Employee employee = employeeRepository.findByEmpemailAndEmppass(email, pswd);
        return employee;
    }

    @Override
    public List<Employee> getAllEmployees() {
        List<Employee> allEmployees = employeeRepository.findAll();
        return allEmployees;
    }



    public boolean deleteEmployee(Integer id) {

       List<Employee>  employee=employeeRepository.findAll();

        if (employee != null) {
            employeeRepository.deleteById(id);

            return true;
        }
return false;

    }


}



