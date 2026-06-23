package com.example.controller;

import com.example.entity.Employee;
import com.example.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class LoginController {

    @Autowired
    EmployeeService employeeService;

    @GetMapping("/registrationForm")
    public String showRegistrationForm() {

        return "registration";
    }

    @GetMapping("/deleteEmployee/{id}")
    public String deleteEmployee(@PathVariable Integer id) {

        employeeService.deleteEmployee(id);

        return "redirect:/employeeList";
    }


    @GetMapping("/employeeList")
    public String showEmployees(Model model) {

        List<Employee> employees = employeeService.getAllEmployees();

        model.addAttribute("employees", employees);

        return "congrats";
    }

    @PostMapping("/doRegistration")
    public String registration(@ModelAttribute Employee employee, Model model) {


        employeeService.save(employee);

        model.addAttribute("message", "Employee registered successfully");


        return "login";

    }


    @GetMapping("/doLogin")      //http://localhost:8081/loginForm
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/doLogin")
    public String login(@RequestParam String email, @RequestParam String pswd , Model model) {

        // 1. Authenticate user
        Employee employee = employeeService.authenticate(email, pswd);


        System.out.println(employee);
        if (employee != null) {
            List<Employee>  emp = employeeService.getAllEmployees();
            model.addAttribute("employees", emp);
            return "congrats";
        }


        model.addAttribute("msg", "invalid credentials, try again");

        return "login";
    }
}

