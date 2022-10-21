package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StudentController {
	@Autowired
	private StudentRepository studentRepo;
	
	@RequestMapping("/") //http://localhost:8085/
	public String home() 
	{
		return "index";
	}
	@PostMapping("/login")
	public @ResponseBody String add(
			@RequestParam("userName") String userName,  
			@RequestParam("userPassword") String userPassword 

			)
	{
//		Employee emp = new Employee(empId, empName, jobTitle,salary, depNo);
//		empRepo.save(emp);
		return "employee is added";
	}
	
	@RequestMapping("/signIn")
	public String Modify()
	{
		return "signIn";
	}
}