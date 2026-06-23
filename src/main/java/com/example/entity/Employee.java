package com.example.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "EMPLOYEE")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int empid;
   private String empname ;
   private String empemail;
    private String emppass;
    private String role;

    public int getEmpid() {

        return empid;
    }

    public void setEmpid(int empid) {

        this.empid = empid;
    }

    public String getEmpname() {

        return empname;
    }

    public void setEmpname(String empname) {

        this.empname = empname;
    }

    public String getEmpemail() {

        return empemail;
    }

    public void setEmpemail(String empemail) {

        this.empemail = empemail;
    }

    public String getEmppass() {

        return emppass;
    }

    public void setEmppass(String emppass) {

        this.emppass = emppass;
    }

    public String getRole() {

        return role;
    }

    public void setRole(String role) {

        this.role = role;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "empid=" + empid +
                ", empname='" + empname + '\'' +
                ", empemail='" + empemail + '\'' +
                ", emppass='" + emppass + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}

