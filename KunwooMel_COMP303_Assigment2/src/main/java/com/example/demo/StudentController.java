package com.example.demo;

import java.time.LocalDate;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

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
	@Autowired
	private SportsRepository sportsRepo;
	@Autowired
	private RegistrationRepository registrationRepo;
	Map<String, Object> model = new HashMap<String, Object>();

	@RequestMapping("/") //http://localhost:8085/
	public String home() 
	{
		return "index";
	}
	@PostMapping("/login")
	public @ResponseBody ModelAndView add(
			@RequestParam("userName") String userName,  
			@RequestParam("userPassword") String userPassword)
	{
		Student loggedInStudent = new Student();
		loggedInStudent = studentRepo.findByUserName(userName).get(0);
		List<Sports> sportsList;
		sportsList = sportsRepo.findAll();
		model.put("studentInfo", loggedInStudent);
		model.put("sportsList", sportsList);

		return new ModelAndView("sports","model", model);
	}
	
	@RequestMapping("/signIn")
	public String SignUp()
	{
		return "signIn";
	}
	
	@PostMapping("/signIn")
    public @ResponseBody ModelAndView add(@RequestParam("studentId") int studentId,
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
        return new ModelAndView("index", "model",model);
        
    }
	
	@RequestMapping("/sports")
	public String SelectSport()
	{
		return "signIn";
	}
	
	@PostMapping("/selectSports")
    public @ResponseBody ModelAndView add(@RequestParam("sportsCheckbox") int sportId)
    {
		Sports selectedSports = new Sports();
		selectedSports = sportsRepo.findById(sportId).get(0);
		model.put("selectedSports", selectedSports);
		return new ModelAndView("register","model", model);
        
    }
	
	@RequestMapping("/register")
	public String RegisterSport()
	{
		return "register";
	}
	
	@PostMapping("/registeredSports")
    public  @ResponseBody ModelAndView registration(
            @RequestParam("startDate") String startDate,
            @RequestParam("numberOfShirts") String numberOfShirts,
            @RequestParam("numberOfShorts") String numberOfShorts)
    {
		
		Random random = new Random(System.nanoTime());
		int randomInt = random.nextInt(1000000000);
		  
		int registrationId = randomInt;
		Sports sport = (Sports) model.get("selectedSports");
		Student student = (Student) model.get("studentInfo");
		double amountPaid = sport.fee + (Integer.parseInt(numberOfShirts) + Integer.parseInt(numberOfShorts) *35);
		Registration registeredSport = new Registration(
				registrationId, 
				student.studentId, 
				sport.sportName,
				sport.coachName,  
				LocalDate.parse(startDate),
				Integer.parseInt(numberOfShirts),
				Integer.parseInt(numberOfShorts),
				amountPaid
				);

		model.put("registeredSports", registeredSport);
		registrationRepo.save(registeredSport);
		return new ModelAndView("confirmation","model", model);
    }
	@RequestMapping("/confirmation")
	public String confirmation () 
	{
		return "confirmation";
	}
	
	@PostMapping("/navigatoToHome")
    public  @ResponseBody ModelAndView navigateHome()
    {
		
		return new ModelAndView("home","model", model);
    }
	
	@RequestMapping("/home")
	public String Home() 
	{
		return "home";
	}
	
	@RequestMapping("/history")
	public String History() 
	{
		return "history";
	}
	
	@PostMapping("/navigateToHistory")
    public  @ResponseBody ModelAndView navigateHistory()
    {
		Student student = (Student) model.get("studentInfo");
		int studentId = student.studentId;
		List<Registration> registeredSportsList;
		registeredSportsList = registrationRepo.findByStudentId(studentId);

		model.put("registeredSportsList", registeredSportsList);
		return new ModelAndView("history","model", model);
    }
	
	@RequestMapping("/profile")
	public String Profile() 
	{
		return "profile";
	}
	
	@PostMapping("/navigateToProfile")
    public  @ResponseBody ModelAndView navigateProfile()
    {
		return new ModelAndView("profile","model", model);
    }
	
	@PostMapping("/editProfile")
    public @ResponseBody ModelAndView update()

    {
        return new ModelAndView("editprofile","model", model);  
    }
	
	@RequestMapping("/editprofile")
	public String editProfile()
	{
		return "editprofile";
	}
	
	@PostMapping("/update")
    public @ResponseBody ModelAndView edit(
    		@RequestParam("firstname") String firstname,
    		@RequestParam("lastname") String lastname,
    		@RequestParam("userName") String userName,
            @RequestParam("address") String address,
            @RequestParam("city") String city,
            @RequestParam("postalCode") String postalCode,
            @RequestParam("stdPhone") String stdPhone,
            @RequestParam("doctorName") String doctorName,
            @RequestParam("docPhone") String docPhone)
    {
		Student student = (Student) model.get("studentInfo");
		String password = student.userPassword;
		int studentId = student.studentId;
		Student updatedStudent = new Student(studentId,userName,password,firstname,lastname,address,city,postalCode,stdPhone,doctorName, docPhone);
		model.put("studentInfo", updatedStudent);

		studentRepo.save(updatedStudent);
		
        return new ModelAndView("home","model", model);
    }
}