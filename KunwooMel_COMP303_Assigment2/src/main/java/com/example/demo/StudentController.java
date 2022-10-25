package com.example.demo;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {
	@Autowired
	private StudentRepository studentRepo;
	Map<String, Object> model = new HashMap<String, Object>();

	@RequestMapping("/") //http://localhost:8085/
	public String home() 
	{
		return "index";
	}
	@PostMapping("/login")
	public @ResponseBody String add(
			@RequestParam("userName") String userName,  
			@RequestParam("userPassword") String userPassword)
	{
		Student loggedInStudent = new Student();
		loggedInStudent = studentRepo.findByUserName(userName).get(0);
		model.put("studentInfo", loggedInStudent);
		return "sports";
	}
	
	@RequestMapping("/signIn")
	public String SignUp()
	{
		return "signIn";
	}
	
	@PostMapping("/signIn")
    public @ResponseBody String add(@RequestParam("studentId") int studentId,
            @RequestParam("userName") String userName,
            @RequestParam("userPassword") String userPassword,
            @RequestParam("firstname") String firstname,
            @RequestParam("lastname") String lastname,
            @RequestParam("address") String address,
            @RequestParam("city") String city,
            @RequestParam("postalCode") String postalCode,
            @RequestParam("stdPhone") String stdPhone,
            @RequestParam("doctorName") String doctorName,
            @RequestParam("docPhone") String docPhone)
    {
		Student student=new Student(studentId,userName,userPassword,firstname,lastname,address,city,postalCode,stdPhone,doctorName, docPhone);
		studentRepo.save(student);
        return "student is added";
        
    }
}